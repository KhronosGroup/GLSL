# Copyright 2016-2024 The Khronos Group Inc.
# SPDX-License-Identifier: Apache-2.0

RUBY_ENGINE == 'opal' ? (require 'vulkan-macros/extension') : (require_relative 'vulkan-macros/extension')

# All the inline macros we need
Asciidoctor::Extensions.register do
    inline_macro CanInlineMacro
    inline_macro CannotInlineMacro
    inline_macro MayInlineMacro
    inline_macro MayNotInlineMacro
    inline_macro MustInlineMacro
    inline_macro MustNotInlineMacro
    inline_macro OptionalInlineMacro
    inline_macro RecommendInlineMacro
    inline_macro RequiredInlineMacro
    inline_macro ShouldInlineMacro
    inline_macro ShouldNotInlineMacro
    inline_macro FlinkInlineMacro
    inline_macro FnameInlineMacro
    inline_macro FtextInlineMacro
    inline_macro SnameInlineMacro
    inline_macro SlinkInlineMacro
    inline_macro StextInlineMacro
    inline_macro EnameInlineMacro
    inline_macro ElinkInlineMacro
    inline_macro EtextInlineMacro
    inline_macro PnameInlineMacro
    inline_macro PtextInlineMacro
    inline_macro DnameInlineMacro
    inline_macro DlinkInlineMacro
    inline_macro TnameInlineMacro
    inline_macro TlinkInlineMacro
    inline_macro BasetypeInlineMacro
    inline_macro CodeInlineMacro
end
