# GLSL

This GLSL shading language repository contains the following for the GLSL and ESSL Khronos shading languages:

- issue tracking for the core specifications
- issue tracking for shading language extensions
  (however, vendor-specific extension issues should be discussed with the vendor)
- new shading language extension proposals and discussions
- existing shading language extensions that do not live in the Khronos registries for OpenGL or OpenGL ES
  (e.g., those created to enable access to Vulkan features)

Note this family of languages is used by (at least) the following APIs:

- OpenGL: consumes GLSL and ESSL
- OpenGL ES: consumes ESSL
- Vulkan: makes use of GLSL and ESSL, via SPIR-V

While OpenGL and OpenGL ES normatively accept GLSL and ESSL as input into their APIs, this is not true of core Vulkan,
which normatively accepts SPIR-V but does not normatively consume a high-level shading language.
