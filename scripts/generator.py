#!/usr/bin/python3 -i
#
# Copyright 2013-2024 The Khronos Group Inc.
#
# SPDX-License-Identifier: Apache-2.0
"""A bit needed from the Vulkan generator.py for antora-prep.py"""

def enquote(s):
    """Return string argument with surrounding quotes,
      for serialization into Python code."""
    if s:
        if isinstance(s, str):
            return f"'{s}'"
        else:
            return s
    return None
