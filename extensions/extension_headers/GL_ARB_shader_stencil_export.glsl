#if defined(GL_FRAGMENT_SHADER)
#define GL_ARB_shader_stencil_export 1

spirv_execution_mode(extensions = ["SPV_EXT_shader_stencil_export"], capabilities = [5013], 5027);     

spirv_decorate (extensions = ["SPV_EXT_shader_stencil_export"], capabilities = [5013], 11, 5014)        
out int gl_FragStencilRefARB; 
#endif