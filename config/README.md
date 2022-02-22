# OpenGL Shading Language Proof-of-Concept Asciidoctor Configuration Files

## Macros

The macros in `vulkan-macros.rb` are described in the ["`Vulkan
Documentation and Extensions: Procedures and
Conventions`"](https://www.khronos.org/registry/vulkan/specs/1.0/styleguide.html)
document.

These macros are not currently used in the GLSL spec built. They are
retained as an example of how to implement simple custom macros.

## Support for Math

Asciidoctor is customized using `katex_replace.rb` to insert KaTeX
`<script>` tags from `math.js` for HTML5, and properly pass latexmath:
blocks through to KaTeX. For PDF builds, asciidoctor-mathematical is used to
generate SVGs from latexmath: equations.
