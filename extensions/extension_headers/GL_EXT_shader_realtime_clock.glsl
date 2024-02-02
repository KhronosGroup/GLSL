#define GL_EXT_shader_realtime_clock 1

uvec2 clockRealtime2x32EXT(void) {
    spirv_instruction (extensions = ["SPV_KHR_shader_clock"], capabilities = [5055], id = 5056);
    uvec2 clockRealtime2x32EXT_internal(uint scope);
    
    return clockRealtime2x32EXT_internal(1 /*Device scope*/);
}

#if defined(GL_EXT_shader_explicit_arithmetic_types_int64) || defined(GL_ARB_gpu_shader_int64) || defined(GL_AMD_gpu_shader_int64)
uint64_t clockRealtimeEXT(void) {
    spirv_instruction (extensions = ["SPV_KHR_shader_clock"], capabilities = [5055], id = 5056);
    uint64_t clockRealtimeEXT_internal(uint scope);
    
    return clockRealtimeEXT_internal(1 /*Device scope*/);
}
#endif