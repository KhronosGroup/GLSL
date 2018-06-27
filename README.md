# GLSL

GLSL and ESSL are Khronos high-level shading languages.

Khronos Registries are available for

- [OpenGL](https://www.khronos.org/registry/OpenGL/index_gl.php)
- [OpenGL ES](https://www.khronos.org/registry/OpenGL/index_es.php)
- [Vulkan](https://www.khronos.org/registry/vulkan/)

[Extension specifications in this repository are listed below.](#extension-specifications-in-this-repository)

## This Project Contains

This GLSL shading language project contains the following for the GLSL and ESSL Khronos shading languages:

- issue tracking for the core specifications
- issue tracking for shading language extensions
  (however, vendor-specific extension issues should be discussed with the vendor)
- new shading language extension proposals and discussions
- [shading language extensions](#extension-specifications-in-this-repository) that do not live in the Khronos registries for OpenGL or OpenGL ES
  (e.g., those created to enable access to Vulkan features)

Note this family of languages is used by (at least) the following APIs:

- OpenGL: consumes GLSL and ESSL
- OpenGL ES: consumes ESSL
- Vulkan: makes use of GLSL and ESSL, via SPIR-V

While OpenGL and OpenGL ES normatively accept GLSL and ESSL as input into their APIs, this is not true of core Vulkan,
which normatively accepts SPIR-V but does not normatively consume a high-level shading language.

## Extension Specifications in this Repository

- [GL_KHR_vulkan_glsl](https://github.com/KhronosGroup/GLSL/blob/master/extensions/khr/GL_KHR_vulkan_glsl.txt)
- [GL_EXT_control_flow_attributes](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GL_EXT_control_flow_attributes.txt)
- [GL_EXT_device_group](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GL_EXT_device_group.txt)
- [GL_EXT_multiview](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GL_EXT_multiview.txt)
- [GL_AMD_shader_fragment_mask](https://github.com/KhronosGroup/GLSL/blob/master/extensions/amd/GL_AMD_shader_fragment_mask.txt)
- [GL_NVX_multiview_per_view_attributes](https://github.com/KhronosGroup/GLSL/blob/master/extensions/nvx/GL_NVX_multiview_per_view_attributes.txt)
- [GL_KHR_shader_subgroup](https://github.com/KhronosGroup/GLSL/blob/master/extensions/khr/GL_KHR_shader_subgroup.txt)
- [GL_NV_shader_subgroup_partitioned](https://github.com/KhronosGroup/GLSL/blob/master/extensions/nv/GL_NV_shader_subgroup_partitioned.txt)
- [GL_EXT_nonuniform_qualifier](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GL_EXT_nonuniform_qualifier.txt)
- [GL_EXT_samplerless_texture_functions](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GL_EXT_samplerless_texture_functions.txt)
