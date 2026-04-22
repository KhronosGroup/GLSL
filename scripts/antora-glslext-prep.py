#!/usr/bin/env python3
#
# Copyright 2022-2026 The Khronos Group Inc.
# SPDX-License-Identifier: Apache-2.0

"""Used to convert files from the GLSL extension spec tree to Antora module
format.

Usage: `antora-glslext-prep.py [options] files`

- `-root` is the root path (repository root, usually) relative to which spec
  files are processed.
  Defaults to current directory if not specified.
- `-component` is the path to the module and component in which converted
  files are written (e.g. the component directory under which pages/,
  partials/, images/, etc. are located).
  This option must be specified.
- Remaining arguments are individual pathnames to convert.

Only looks for .txt files containing GLSL extensions (eventually, can look
for both .adoc and .txt).
Each txt file is copied into the component partials directory, then a stub
.adoc file imbedding that file is created in the pages directory.
"""

# For error and file-loading interfaces only
import argparse
import importlib
import os
from pathlib import Path
import re
import shutil
import sys

Pages = 'pages'
Partials = 'partials'

def removeDestination(path, text, overwrite = True):
    """Remove a destination file, if it exists and overwrite is true.
       Ensure the destination directory exists.

        path - file pathname
        text - descriptive text for errors
        overwrite - if True, replace existing output file
    """

    if os.path.exists(path):
        if overwrite:
            # print(f'Removing {text}: {path}')
            os.remove(path)
        else:
            raise RuntimeError(f'Will not overwrite {text}: {path}')

    dir = os.path.dirname(path)
    if not os.path.exists(dir):
        # print(f'Creating {text} directory {dir}')
        os.makedirs(dir)

if __name__ == '__main__':
    parser = argparse.ArgumentParser()

    parser.add_argument('-root', action='store', dest='root',
                        default=os.getcwd(),
                        help='Specify root directory under which files are located (default current directory)')
    parser.add_argument('-component', action='store', dest='component',
                        required=True,
                        help='Specify module / component directory in which converted files are written')
    parser.add_argument('files', metavar='filename', nargs='*',
                        help='Specify name of a single file to convert')

    args = parser.parse_args()

    args.root = os.path.abspath(args.root)
    args.component = os.path.abspath(args.component)

    if False:
        # testHarness()
        sys.exit(0)

    navfiles = []

    for filename in args.files:
        srcpath = os.path.abspath(filename)
        relpath = os.path.relpath(srcpath, args.root)

        # Determine extension name from the filename
        (_, tail) = os.path.split(srcpath)
        (extname, _) = os.path.splitext(tail)
        # print(f'Adding extension {extname} -> {relpath}')

        # Where to copy the file
        copypath = Path(args.component) / Partials / relpath

        # Actually copy the file, removing target if it exists
        removeDestination(copypath, 'extension target file')
        shutil.copy(srcpath, copypath)

        # Path to the .adoc wrapper for the extension, which is also an
        # entry in the navigation file
        (stubnav, _) = os.path.splitext(relpath)
        stubnav += '.adoc'
        stubpath = Path(args.component) / Pages / stubnav

        navfiles.append(((extname, stubnav)))

        # Create the stub file directory
        dir = os.path.dirname(stubpath)
        if not os.path.exists(dir):
            # print(f'Creating stub file directory {dir}')
            os.makedirs(dir)

        # Create the stub file
        # print(f'Creating stub file {stubpath} for {extname}')
        fp = open(stubpath, 'w')
        fp.write(f"""= {extname}

The original text file describing this extension as a set of diffs to the
OpenGL Shading Language Specification follows.

[listing,subs="macros"]
----
include::partial${relpath}[]
----\n""")
        fp.close()

    def apiSortKey(extname):
        """The key to sort on is the extname with any GL{,SL}_{AUTHOR_
           prefix removed."""
        name = extname

        # Remove vendor prefix
        if name[0:5] == 'GLSL_':
            name = name[5:]
        elif name[0:3] == 'GL_':
            name = name[3:]
        else:
            raise ValueError(f'{extname} is not prefixed by GL_ or GLSL_')

        # Remove author ID
        sepindex = name.find('_')
        if sepindex != -1:
            name = name[sepindex+1:]
        else:
            raise ValueError(f'{extname} does not include an author name followed by _')

        return name.upper()

    navfile = Path(args.component) / 'nav.adoc'
    fp = open(navfile, 'w')

    sorted_pages = sorted(navfiles, key=lambda pair: apiSortKey(pair[0]))
    lastLetter = ''
    for (extname, relpath) in sorted_pages:
        letter = apiSortKey(extname)[0:1]

        if letter != lastLetter:
            # Start new section
            print(f'* {letter}', file=fp)
            lastLetter = letter

        print(f'** xref:{relpath}[{extname}]', file=fp)

    fp.close()
