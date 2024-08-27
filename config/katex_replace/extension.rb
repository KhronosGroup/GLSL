# Copyright 2016-2024 The Khronos Group Inc.
# SPDX-License-Identifier: Apache-2.0

require 'asciidoctor/extensions' unless RUBY_ENGINE == 'opal'

include ::Asciidoctor

class ReplaceMathjaxWithKatex < Extensions::Postprocessor

  MathJaXScript = /<script type="text\/x-mathjax-config">((?!<\/script>).)+<\/script>/m
  MathJaXCDN = '<script src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.6.0/MathJax.js?config=TeX-MML-AM_HTMLorMML"></script>'
  
  def process document, output
  
    if document.attr? 'stem'
      katexpath = document.attr 'katexpath'
      
      katexScript = '<link rel="stylesheet" href="' + katexpath + '/katex.min.css">
<script src="' + katexpath + '/katex.min.js"></script>
<script src="' + katexpath + '/contrib/auto-render.min.js"></script>
    <!-- Use KaTeX to render math once document is loaded, see
         https://github.com/Khan/KaTeX/tree/master/contrib/auto-render -->
<script>
    document.addEventListener("DOMContentLoaded", function () {
        renderMathInElement(
            document.body,
            {
                delimiters: [
                    { left: "$$", right: "$$", display: true},
                    { left: "\\\\\[", right: "\\\\\]", display: true},
                    { left: "$", right: "$", display: false},
                    { left: "\\\\\(", right: "\\\\\)", display: false}
                ]
            }
        );
    });
</script>'

      output.sub! MathJaXScript, ''
      output.sub! MathJaXCDN, ''
      output.sub! /(?=<\/head>)/, katexScript
    end
    output
  end 
end
