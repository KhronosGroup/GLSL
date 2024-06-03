# Copyright 2016-2024 The Khronos Group Inc.
# SPDX-License-Identifier: Apache-2.0

require 'asciidoctor/extensions' unless RUBY_ENGINE == 'opal'

include ::Asciidoctor

class VulkanInlineMacroBase < Extensions::InlineMacroProcessor
    use_dsl    
    using_format :short
end

class NormativeInlineMacroBase < VulkanInlineMacroBase
    def text
        'normative'
    end
    
    def process parent, target, attributes
		'<strong class="purple">' + text + '</strong>'
    end
end

class LinkInlineMacroBase < VulkanInlineMacroBase
    def process parent, target, attributes
		'<code><a href="#' + target + '">' + target + '</a></code>'
    end
end

class CodeInlineMacroBase < VulkanInlineMacroBase
    def process parent, target, attributes
		'<code>' + target + '</code>'
    end
end

class StrongInlineMacroBase < VulkanInlineMacroBase
    def process parent, target, attributes    
        '<code>' + target + '</code>'
    end
end

class ParamInlineMacroBase < VulkanInlineMacroBase
    def process parent, target, attributes
        '<code>' + target + '</code>'
    end
end

class CanInlineMacro < NormativeInlineMacroBase
    named :can
    match /can:(\w*)/
    
    def text
        'can'
    end
end

class CannotInlineMacro < NormativeInlineMacroBase
    named :cannot
    match /cannot:(\w*)/
    
    def text
        'cannot'
    end
end

class MayInlineMacro < NormativeInlineMacroBase
    named :may
    match /may:(\w*)/
    
    def text
        'may'
    end
end

class MayNotInlineMacro < NormativeInlineMacroBase
    named :maynot
    match /maynot:(\w*)/
    
    def text
        'may not'
    end
end

class MustInlineMacro < NormativeInlineMacroBase
    named :must
    match /must:(\w*)/
    
    def text
        'must'
    end
end

class MustNotInlineMacro < NormativeInlineMacroBase
    named :mustnot
    match /mustnot:(\w*)/

    def text
        'must not'
    end
end

class OptionalInlineMacro < NormativeInlineMacroBase
    named :optional
    match /optional:(\w*)/
    
    def text
        'optional'
    end
end

class RecommendInlineMacro < NormativeInlineMacroBase
    named :recommend
    match /recommend:(\w*)/
    
    def text
        'recommend'
    end
end

class RequiredInlineMacro < NormativeInlineMacroBase
    named :required
    match /required:(\w*)/
    
    def text
        'required'
    end
end

class ShouldInlineMacro < NormativeInlineMacroBase
    named :should
    match /should:(\w*)/
    
    def text
        'should'
    end
end

class ShouldNotInlineMacro < NormativeInlineMacroBase
    named :shouldnot
    match /shouldnot:(\w*)/
    
    def text
        'should not'
    end
end

class FlinkInlineMacro < LinkInlineMacroBase
    named :flink
    match /flink:(\w+)/
end

class FnameInlineMacro < StrongInlineMacroBase
    named :fname
    match /fname:(\w+)/
end

class FtextInlineMacro < StrongInlineMacroBase
    named :ftext
    match /ftext:(\w+)/
end

class SnameInlineMacro < CodeInlineMacroBase
    named :sname
    match /sname:(\w+)/
end

class SlinkInlineMacro < LinkInlineMacroBase
    named :slink
    match /slink:(\w+)/
end

class StextInlineMacro < CodeInlineMacroBase
    named :stext
    match /stext:(\w+)/
end

class EnameInlineMacro < CodeInlineMacroBase
    named :ename
    match /ename:(\w+)/
end

class ElinkInlineMacro < LinkInlineMacroBase
    named :elink
    match /elink:(\w+)/
end

class EtextInlineMacro < CodeInlineMacroBase
    named :etext
    match /etext:([\w\*]+)/
end

class PnameInlineMacro < ParamInlineMacroBase
    named :pname
    match /pname:((\w[\w.]*)*\w+)/
end

class PtextInlineMacro < ParamInlineMacroBase
    named :ptext
    match /ptext:((\w[\w.]*)*\w+)/
end

class DnameInlineMacro < CodeInlineMacroBase
    named :dname
    match /dname:(\w+)/
end

class DlinkInlineMacro < LinkInlineMacroBase
    named :dlink
    match /dlink:(\w+)/
end

class TnameInlineMacro < CodeInlineMacroBase
    named :tname
    match /tname:(\w+)/
end

class TlinkInlineMacro < LinkInlineMacroBase
    named :tlink
    match /tlink:(\w+)/
end

class BasetypeInlineMacro < CodeInlineMacroBase
    named :basetype
    match /basetype:(\w+)/
end

class CodeInlineMacro < StrongInlineMacroBase
    named :code
    match /code:(\w+)/
end
