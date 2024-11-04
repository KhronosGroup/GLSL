# Copyright 2014-2024 The Khronos Group Inc.
# SPDX-License-Identifier: Apache-2.0

# OpenGL Shading Language Specification makefile

# The default 'all' target builds the following sub-targets:
#  html - HTML single-page API specifications for GLSL and ESSL
#  pdf - PDF single-page API specification for GLSL and ESSL

all: html pdf

QUIET	 ?= @
PYTHON	 ?= python3
ASCIIDOC ?= asciidoctor
RM	 = rm -f
RMRF	 = rm -rf
MKDIR	 = mkdir -p
CP	 = cp
KATEX	 = katex

# Where the repo root is
ROOTDIR  = $(CURDIR)
# Where the spec files are
SPECDIR  = $(CURDIR)
# Path to scripts used in generation
SCRIPTS  = $(ROOTDIR)/scripts
# Path to configs and asciidoc extensions used in generation
CONFIGS  = $(ROOTDIR)/config
# Images used by the spec. These are included in generated HTML now.
IMAGEPATH = $(SPECDIR)/images

# Target directories for output files
# OUTDIR - base directory in which outputs are generated
OUTDIR	  = $(ROOTDIR)/out
PYXREFMAP = $(GENERATED)/xrefMap.py
PYPAGEMAP = $(GENERATED)/pageMap.py

# PDF Equations are written to SVGs, this dictates the location to store
# those files (temporary)
PDFMATHDIR = $(OUTDIR)/equations_temp

# Set VERBOSE to -v to see what asciidoctor is doing.
VERBOSE =

# NOTEOPTS may be used to e.g. control which NOTEs are generated if they
# are protected by ifdef:: blocks
# NOTEOPTS = -a editing-notes

# Spell out RFC2822 format as not all date commands support -R
SPECDATE = $(shell echo `date -u "+%a, %d %b %Y %T %z"`)

# Generate Asciidoc attributes for spec remark
GITHEAD  = .git/logs/HEAD
ifeq ($(wildcard $(GITHEAD)),)
# If GITHEAD does not exist, don't include branch info.
SPECREMARK = Git branch information not available
else
# Could use `git log -1 --format="%cd"` to get branch commit date
# This used to be a dependency in the spec html/pdf targets,
# but that's likely to lead to merge conflicts. Just regenerate
# when pushing a new spec for review to the sandbox.
# The dependency on HEAD is per the suggestion in
# http://neugierig.org/software/blog/2014/11/binary-revisions.html
SPECREMARK = from git branch: $(shell echo `git symbolic-ref --short HEAD`) \
	     commit: $(shell echo `git log -1 --format="%H"`)
endif

# ATTRIBOPTS sets the spec revision date and remark (git commit)
# Could also use '-a revnumber=3.20.3' but the revnumber is just
# imbedded in the document title now.

ATTRIBOPTS   = -a revdate="$(SPECDATE)" \
	       -a revremark="$(SPECREMARK)" \
	       -a stem=latexmath \
	       -a config=$(CONFIGS) \
	       -a chapters=$(SPECDIR)/chapters \
	       -a images=$(IMAGEPATH) \

# Where intermediate files go. OUTDIR is not ideal.
GENERATED    = $(OUTDIR)
# Top-level spec source file
SPECSRC      = $(SPECDIR)/core.adoc
# Static files making up sections of the API spec.
SPECFILES    = $(wildcard $(SPECDIR)/chapters/[A-Za-z]*.adoc)

# Asciidoctor options

# Note: must be using asciidoctor-pdf 1.5.0.alpha.14 or later
ADOCPDF      = asciidoctor-pdf

# These macros are unused in the GLSL spec and are just here as examples
ADOCEXTS     = -r $(CONFIGS)/vulkan-macros.rb
ADOCOPTS     = -d book $(ATTRIBOPTS) $(NOTEOPTS) $(VERBOSE) $(ADOCEXTS)

# This uses KaTeX for latexmath: blocks in HTML output instead of MathJax
ADOCHTMLEXTS = -r $(CONFIGS)/katex_replace.rb \
	       -r $(CONFIGS)/rouge-extend-css.rb
ADOCHTMLOPTS = $(ADOCHTMLEXTS) -a katexpath=../katex \
	       -a stylesheet=khronos.css \
	       -a stylesdir=$(CONFIGS)

# PDF target-specific Asciidoctor extensions and options
ADOCPDFEXTS  = -r $(ADOCPDF) -r asciidoctor-mathematical \
	       -r $(CONFIGS)/asciidoctor-mathematical-ext.rb
ADOCPDFOPTS  = $(ADOCPDFEXTS) -a mathematical-format=svg \
	       -a imagesoutdir=$(PDFMATHDIR) \
	       -a pdf-fontsdir=$(CONFIGS)/fonts,GEM_FONTS_DIR \
	       -a pdf-stylesdir=$(CONFIGS)/themes -a pdf-style=pdf

.PHONY: directories

# README.md is a proxy for all the katex files that need to be installed
katexinst: $(OUTDIR)/katex/README.md

$(OUTDIR)/katex/README.md: katex/README.md | $(OUTDIR)
	$(QUIET)$(RMRF)  $(OUTDIR)/katex
	$(QUIET)$(CP) -rf katex $(OUTDIR)

# Spec targets
# There is some complexity to try and avoid short virtual targets like 'html'
# causing specs to *always* be regenerated.
html: $(OUTDIR)/essl.html $(OUTDIR)/glsl.html

$(OUTDIR)/essl.html: $(SPECSRC) $(SPECFILES) | $(OUTDIR) katexinst
	$(QUIET)$(ASCIIDOC) -b html5 $(ADOCOPTS) -a ESSL $(ADOCHTMLOPTS) -o $@ $(SPECSRC)

$(OUTDIR)/glsl.html: $(SPECSRC) $(SPECFILES) | $(OUTDIR) katexinst
	$(QUIET)$(ASCIIDOC) -b html5 $(ADOCOPTS) -a GLSL $(ADOCHTMLOPTS) -o $@ $(SPECSRC)

pdf: $(OUTDIR)/glsl.pdf $(OUTDIR)/essl.pdf

$(OUTDIR)/essl.pdf: $(SPECSRC) $(SPECFILES) | $(OUTDIR)
	$(QUIET)$(MKDIR) $(PDFMATHDIR)
	$(QUIET)$(ASCIIDOC) -b pdf $(ADOCOPTS) -a ESSL $(ADOCPDFOPTS) -o $@ $(SPECSRC)

$(OUTDIR)/glsl.pdf: $(SPECSRC) $(SPECFILES) | $(OUTDIR)
	$(QUIET)$(MKDIR) $(PDFMATHDIR)
	$(QUIET)$(ASCIIDOC) -b pdf $(ADOCOPTS) -a GLSL $(ADOCPDFOPTS) -o $@ $(SPECSRC)

$(OUTDIR):
	$(QUIET)$(MKDIR) $(OUTDIR)

# Reflow text in spec sources - not currently used
# REFLOW = reflow.py
# REFLOWOPTS = -overwrite
#
# reflow:
#	  $(QUIET) echo "Warning: please verify the spec outputs build without changes!"
#	  $(PYTHON) $(REFLOW) $(REFLOWOPTS) $(SPECSRC) $(SPECFILES)

# Cross-references of anchors to spec chapters they lie within.
# Used by setup_spec_antora target.

xrefmaps: $(PYXREFMAP)

$(PYXREFMAP): $(OUTDIR)/glsl.html
	$(QUIET)$(PYTHON) $(SCRIPTS)/map_html_anchors.py \
	    $(OUTDIR)/glsl.html -pyfile $(PYXREFMAP)

# Generate all Antora module content
setup_antora: setup_spec_antora

# Generate Antora spec module content by rewriting spec sources
# Individual files must be specified last

ANTORA_SPECMODULE = antora/glsl/modules/glsl

# The list of files can be long enough to exceed system limits on
# arguments lists, so instead of passing them on the command line they
# are stored in a separate file.
ANTORA_FILELIST = $(GENERATED)/antoraFileList.txt

# Additional individual files to include
ANTORA_EXTRAFILES = \
	./config/attribs.adoc \
	./config/headerattribs.adoc \
	./config/copyright-spec.adoc \
	./images/*.svg

# chapters/interfacematching.adoc is specific to ESSL, which we are not
# currently generating.
setup_spec_antora pagemap $(PYPAGEMAP): xrefmaps
	$(QUIET)find ./chapters -name '[A-Za-z]*.adoc' | \
	    grep -v interfacematching.adoc > $(ANTORA_FILELIST)
	$(QUIET)ls -1 $(ANTORA_EXTRAFILES) >> $(ANTORA_FILELIST)
	$(QUIET)$(PYTHON) $(SCRIPTS)/antora-prep.py \
	    -root . \
	    -component $(shell realpath $(ANTORA_SPECMODULE)) \
	    -xrefpath $(GENERATED) \
	    -pageHeaders antora/pageHeaders-spec.adoc \
	    -pypagemap $(PYPAGEMAP) \
	    -filelist $(ANTORA_FILELIST)

# Clean generated and output files

clean: clean_antora
	$(QUIET)$(RMRF) $(OUTDIR)

# Files generated by 'setup_antora' target
# Omit antora/features/modules/features/nav.adoc which is generated, but
# also checked in.
CLEAN_ANTORA_PATHS = \
	$(ANTORA_FILELIST) \
	antora/glsl/modules/glsl/images \
	antora/glsl/modules/glsl/pages/appendices \
	antora/glsl/modules/glsl/pages/chapters \
	antora/glsl/modules/glsl/pages/partials \
	antora/glsl/modules/glsl/partials

clean_antora:
	$(QUIET)$(RMRF) $(CLEAN_ANTORA_PATHS)


