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
- [GL_EXT_vulkan_glsl_relaxed](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GL_EXT_vulkan_glsl_relaxed.txt)
- [GL_EXT_control_flow_attributes](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GL_EXT_control_flow_attributes.txt)
- [GL_EXT_device_group](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GL_EXT_device_group.txt)
- [GL_EXT_multiview](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GL_EXT_multiview.txt)
- [GL_AMD_shader_fragment_mask](https://github.com/KhronosGroup/GLSL/blob/master/extensions/amd/GL_AMD_shader_fragment_mask.txt)
- [GL_NVX_multiview_per_view_attributes](https://github.com/KhronosGroup/GLSL/blob/master/extensions/nvx/GL_NVX_multiview_per_view_attributes.txt)
- [GL_KHR_shader_subgroup](https://github.com/KhronosGroup/GLSL/blob/master/extensions/khr/GL_KHR_shader_subgroup.txt)
- [GL_NV_shader_subgroup_partitioned](https://github.com/KhronosGroup/GLSL/blob/master/extensions/nv/GL_NV_shader_subgroup_partitioned.txt)
- [GL_EXT_nonuniform_qualifier](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GL_EXT_nonuniform_qualifier.txt)
- [GL_EXT_samplerless_texture_functions](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GL_EXT_samplerless_texture_functions.txt)
- [GL_EXT_shader_16bit_storage](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GL_EXT_shader_16bit_storage.txt)
- [GL_KHR_memory_scope_semantics](https://github.com/KhronosGroup/GLSL/blob/master/extensions/khr/GL_KHR_memory_scope_semantics.txt)
- [GL_NV_compute_shader_derivatives](https://github.com/KhronosGroup/GLSL/blob/master/extensions/nv/GLSL_NV_compute_shader_derivatives.txt)
- [GL_NV_fragment_shader_barycentric](https://github.com/KhronosGroup/GLSL/blob/master/extensions/nv/GLSL_NV_fragment_shader_barycentric.txt)
- [GL_NV_mesh_shader](https://github.com/KhronosGroup/GLSL/blob/master/extensions/nv/GLSL_NV_mesh_shader.txt)
- [GL_NV_shader_texture_footprint](https://github.com/KhronosGroup/GLSL/blob/master/extensions/nv/GLSL_NV_shader_texture_footprint.txt)
- [GL_NV_shading_rate_image](https://github.com/KhronosGroup/GLSL/blob/master/extensions/nv/GLSL_NV_shading_rate_image.txt)
- [GL_NV_ray_tracing](https://github.com/KhronosGroup/GLSL/blob/master/extensions/nv/GLSL_NV_ray_tracing.txt)
- [GL_EXT_subgroupuniform_qualifier](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GL_EXT_subgroupuniform_qualifier.txt)
- [GL_EXT_scalar_block_layout](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GL_EXT_scalar_block_layout.txt)
- [GL_EXT_fragment_invocation_density](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GLSL_EXT_fragment_invocation_density.txt)
- [GL_EXT_shader_explicit_arithmetic_types](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GL_EXT_shader_explicit_arithmetic_types.txt)
- [GL_EXT_buffer_reference](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GLSL_EXT_buffer_reference.txt)
- [GL_NV_cooperative_matrix](https://github.com/KhronosGroup/GLSL/blob/master/extensions/nv/GLSL_NV_cooperative_matrix.txt)
- [GL_EXT_buffer_reference2](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GLSL_EXT_buffer_reference2.txt)
- [GL_NV_shader_sm_builtins](https://github.com/KhronosGroup/GLSL/blob/master/extensions/nv/GLSL_NV_shader_sm_builtins.txt)
- [GL_EXT_demote_to_helper_invocation](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GLSL_EXT_demote_to_helper_invocation.txt)
- [GL_EXT_shader_realtime_clock](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GL_EXT_shader_realtime_clock.txt)
- [GLSL_EXT_buffer_reference_uvec2](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GLSL_EXT_buffer_reference_uvec2.txt)
- [GL_EXT_shader_subgroup_extended_types](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GLSL_EXT_shader_subgroup_extended_types.txt)
- [GL_EXT_debug_printf](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GLSL_EXT_debug_printf.txt)
- [GL_EXT_ray_tracing](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GLSL_EXT_ray_tracing.txt)
- [GL_EXT_ray_query](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GLSL_EXT_ray_query.txt)
- [GL_EXT_ray_flags_primitive_culling](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GLSL_EXT_ray_flags_primitive_culling.txt)
- [GL_EXT_shader_atomic_float](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GLSL_EXT_shader_atomic_float.txt)
- [GL_EXT_fragment_shading_rate](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GLSL_EXT_fragment_shading_rate.txt)
- [GL_EXT_shader_image_int64](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GLSL_EXT_shader_image_int64.txt)
- [GL_NV_primitive_shading_rate](https://github.com/KhronosGroup/GLSL/blob/master/extensions/nv/GLSL_NV_primitive_shading_rate.txt)
- [GL_EXT_shared_memory_block](https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GL_EXT_shared_memory_block.txt)
- [GL_HUAWEI_subpass_shading](https://github.com/KhronosGroup/GLSL/blob/master/extensions/huawei/GLSL_HUAWEI_subpass_shading.txt)
