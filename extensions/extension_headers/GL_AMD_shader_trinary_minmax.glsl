#define GL_AMD_shader_trinary_minmax 1

#define SPV_FMIN3_AMD spirv_instruction (extensions = ["SPV_AMD_shader_trinary_minmax"], set = "SPV_AMD_shader_trinary_minmax", id = 1)
#define SPV_UMIN3_AMD spirv_instruction (extensions = ["SPV_AMD_shader_trinary_minmax"], set = "SPV_AMD_shader_trinary_minmax", id = 2)
#define SPV_SMIN3_AMD spirv_instruction (extensions = ["SPV_AMD_shader_trinary_minmax"], set = "SPV_AMD_shader_trinary_minmax", id = 3)
#define SPV_FMAX3_AMD spirv_instruction (extensions = ["SPV_AMD_shader_trinary_minmax"], set = "SPV_AMD_shader_trinary_minmax", id = 4)
#define SPV_UMAX3_AMD spirv_instruction (extensions = ["SPV_AMD_shader_trinary_minmax"], set = "SPV_AMD_shader_trinary_minmax", id = 5)
#define SPV_SMAX3_AMD spirv_instruction (extensions = ["SPV_AMD_shader_trinary_minmax"], set = "SPV_AMD_shader_trinary_minmax", id = 6)
#define SPV_FMID3_AMD spirv_instruction (extensions = ["SPV_AMD_shader_trinary_minmax"], set = "SPV_AMD_shader_trinary_minmax", id = 7)
#define SPV_UMID3_AMD spirv_instruction (extensions = ["SPV_AMD_shader_trinary_minmax"], set = "SPV_AMD_shader_trinary_minmax", id = 8)
#define SPV_SMID3_AMD spirv_instruction (extensions = ["SPV_AMD_shader_trinary_minmax"], set = "SPV_AMD_shader_trinary_minmax", id = 9)

SPV_FMIN3_AMD float min3(float x, float y, float z);
SPV_FMIN3_AMD vec2 min3(vec2 x, vec2 y, vec2 z);
SPV_FMIN3_AMD vec3 min3(vec3 x, vec3 y, vec3 z);
SPV_FMIN3_AMD vec4 min3(vec4 x, vec4 y, vec4 z);
SPV_FMIN3_AMD mat2x2 min3(mat2x2 x, mat2x2 y, mat2x2 z);
SPV_FMIN3_AMD mat2x3 min3(mat2x3 x, mat2x3 y, mat2x3 z);
SPV_FMIN3_AMD mat2x4 min3(mat2x4 x, mat2x4 y, mat2x4 z);
SPV_FMIN3_AMD mat3x2 min3(mat3x2 x, mat3x2 y, mat3x2 z);
SPV_FMIN3_AMD mat3x3 min3(mat3x3 x, mat3x3 y, mat3x3 z);
SPV_FMIN3_AMD mat3x4 min3(mat3x4 x, mat3x4 y, mat3x4 z);
SPV_FMIN3_AMD mat4x2 min3(mat4x2 x, mat4x2 y, mat4x2 z);
SPV_FMIN3_AMD mat4x3 min3(mat4x3 x, mat4x3 y, mat4x3 z);
SPV_FMIN3_AMD mat4x4 min3(mat4x4 x, mat4x4 y, mat4x4 z);

#if defined(GL_AMD_gpu_shader_half_float) || defined(GL_EXT_shader_explicit_arithmetic_types_float16)
SPV_FMIN3_AMD float16_t min3(float16_t x, float16_t y, float16_t z);
SPV_FMIN3_AMD f16vec2 min3(f16vec2 x, f16vec2 y, f16vec2 z);
SPV_FMIN3_AMD f16vec3 min3(f16vec3 x, f16vec3 y, f16vec3 z);
SPV_FMIN3_AMD f16vec4 min3(f16vec4 x, f16vec4 y, f16vec4 z);
SPV_FMIN3_AMD f16mat2x2 min3(f16mat2x2 x, f16mat2x2 y, f16mat2x2 z);
SPV_FMIN3_AMD f16mat2x3 min3(f16mat2x3 x, f16mat2x3 y, f16mat2x3 z);
SPV_FMIN3_AMD f16mat2x4 min3(f16mat2x4 x, f16mat2x4 y, f16mat2x4 z);
SPV_FMIN3_AMD f16mat3x2 min3(f16mat3x2 x, f16mat3x2 y, f16mat3x2 z);
SPV_FMIN3_AMD f16mat3x3 min3(f16mat3x3 x, f16mat3x3 y, f16mat3x3 z);
SPV_FMIN3_AMD f16mat3x4 min3(f16mat3x4 x, f16mat3x4 y, f16mat3x4 z);
SPV_FMIN3_AMD f16mat4x2 min3(f16mat4x2 x, f16mat4x2 y, f16mat4x2 z);
SPV_FMIN3_AMD f16mat4x3 min3(f16mat4x3 x, f16mat4x3 y, f16mat4x3 z);
SPV_FMIN3_AMD f16mat4x4 min3(f16mat4x4 x, f16mat4x4 y, f16mat4x4 z);
#endif

SPV_UMIN3_AMD uint min3(uint x, uint y, uint z);
SPV_UMIN3_AMD uvec2 min3(uvec2 x, uvec2 y, uvec2 z);
SPV_UMIN3_AMD uvec3 min3(uvec3 x, uvec3 y, uvec3 z);
SPV_UMIN3_AMD uvec4 min3(uvec4 x, uvec4 y, uvec4 z);
SPV_UMIN3_AMD umat2x2 min3(umat2x2 x, umat2x2 y, umat2x2 z);
SPV_UMIN3_AMD umat2x3 min3(umat2x3 x, umat2x3 y, umat2x3 z);
SPV_UMIN3_AMD umat2x4 min3(umat2x4 x, umat2x4 y, umat2x4 z);
SPV_UMIN3_AMD umat3x2 min3(umat3x2 x, umat3x2 y, umat3x2 z);
SPV_UMIN3_AMD umat3x3 min3(umat3x3 x, umat3x3 y, umat3x3 z);
SPV_UMIN3_AMD umat3x4 min3(umat3x4 x, umat3x4 y, umat3x4 z);
SPV_UMIN3_AMD umat4x2 min3(umat4x2 x, umat4x2 y, umat4x2 z);
SPV_UMIN3_AMD umat4x3 min3(umat4x3 x, umat4x3 y, umat4x3 z);
SPV_UMIN3_AMD umat4x4 min3(umat4x4 x, umat4x4 y, umat4x4 z);

#if defined(GL_EXT_shader_explicit_arithmetic_types_int16)
SPV_UMIN3_AMD uint16_t min3(uint16_t x, uint16_t y, uint16_t z);
SPV_UMIN3_AMD u16vec2 min3(u16vec2 x, u16vec2 y, u16vec2 z);
SPV_UMIN3_AMD u16vec3 min3(u16vec3 x, u16vec3 y, u16vec3 z);
SPV_UMIN3_AMD u16vec4 min3(u16vec4 x, u16vec4 y, u16vec4 z);
SPV_UMIN3_AMD u16mat2x2 min3(u16mat2x2 x, u16mat2x2 y, u16mat2x2 z);
SPV_UMIN3_AMD u16mat2x3 min3(u16mat2x3 x, u16mat2x3 y, u16mat2x3 z);
SPV_UMIN3_AMD u16mat2x4 min3(u16mat2x4 x, u16mat2x4 y, u16mat2x4 z);
SPV_UMIN3_AMD u16mat3x2 min3(u16mat3x2 x, u16mat3x2 y, u16mat3x2 z);
SPV_UMIN3_AMD u16mat3x3 min3(u16mat3x3 x, u16mat3x3 y, u16mat3x3 z);
SPV_UMIN3_AMD u16mat3x4 min3(u16mat3x4 x, u16mat3x4 y, u16mat3x4 z);
SPV_UMIN3_AMD u16mat4x2 min3(u16mat4x2 x, u16mat4x2 y, u16mat4x2 z);
SPV_UMIN3_AMD u16mat4x3 min3(u16mat4x3 x, u16mat4x3 y, u16mat4x3 z);
SPV_UMIN3_AMD u16mat4x4 min3(u16mat4x4 x, u16mat4x4 y, u16mat4x4 z);
#endif

SPV_SMIN3_AMD int min3(int x, int y, int z);
SPV_SMIN3_AMD ivec2 min3(ivec2 x, ivec2 y, ivec2 z);
SPV_SMIN3_AMD ivec3 min3(ivec3 x, ivec3 y, ivec3 z);
SPV_SMIN3_AMD ivec4 min3(ivec4 x, ivec4 y, ivec4 z);
SPV_SMIN3_AMD imat2x2 min3(imat2x2 x, imat2x2 y, imat2x2 z);
SPV_SMIN3_AMD imat2x3 min3(imat2x3 x, imat2x3 y, imat2x3 z);
SPV_SMIN3_AMD imat2x4 min3(imat2x4 x, imat2x4 y, imat2x4 z);
SPV_SMIN3_AMD imat3x2 min3(imat3x2 x, imat3x2 y, imat3x2 z);
SPV_SMIN3_AMD imat3x3 min3(imat3x3 x, imat3x3 y, imat3x3 z);
SPV_SMIN3_AMD imat3x4 min3(imat3x4 x, imat3x4 y, imat3x4 z);
SPV_SMIN3_AMD imat4x2 min3(imat4x2 x, imat4x2 y, imat4x2 z);
SPV_SMIN3_AMD imat4x3 min3(imat4x3 x, imat4x3 y, imat4x3 z);
SPV_SMIN3_AMD imat4x4 min3(imat4x4 x, imat4x4 y, imat4x4 z);

#if defined(GL_EXT_shader_explicit_arithmetic_types_int16)
SPV_SMIN3_AMD int16_t min3(int16_t x, int16_t y, int16_t z);
SPV_SMIN3_AMD i16vec2 min3(i16vec2 x, i16vec2 y, i16vec2 z);
SPV_SMIN3_AMD i16vec3 min3(i16vec3 x, i16vec3 y, i16vec3 z);
SPV_SMIN3_AMD i16vec4 min3(i16vec4 x, i16vec4 y, i16vec4 z);
SPV_SMIN3_AMD i16mat2x2 min3(i16mat2x2 x, i16mat2x2 y, i16mat2x2 z);
SPV_SMIN3_AMD i16mat2x3 min3(i16mat2x3 x, i16mat2x3 y, i16mat2x3 z);
SPV_SMIN3_AMD i16mat2x4 min3(i16mat2x4 x, i16mat2x4 y, i16mat2x4 z);
SPV_SMIN3_AMD i16mat3x2 min3(i16mat3x2 x, i16mat3x2 y, i16mat3x2 z);
SPV_SMIN3_AMD i16mat3x3 min3(i16mat3x3 x, i16mat3x3 y, i16mat3x3 z);
SPV_SMIN3_AMD i16mat3x4 min3(i16mat3x4 x, i16mat3x4 y, i16mat3x4 z);
SPV_SMIN3_AMD i16mat4x2 min3(i16mat4x2 x, i16mat4x2 y, i16mat4x2 z);
SPV_SMIN3_AMD i16mat4x3 min3(i16mat4x3 x, i16mat4x3 y, i16mat4x3 z);
SPV_SMIN3_AMD i16mat4x4 min3(i16mat4x4 x, i16mat4x4 y, i16mat4x4 z);
#endif

SPV_FMAX3_AMD float max3(float x, float y, float z);
SPV_FMAX3_AMD vec2 max3(vec2 x, vec2 y, vec2 z);
SPV_FMAX3_AMD vec3 max3(vec3 x, vec3 y, vec3 z);
SPV_FMAX3_AMD vec4 max3(vec4 x, vec4 y, vec4 z);
SPV_FMAX3_AMD mat2x2 max3(mat2x2 x, mat2x2 y, mat2x2 z);
SPV_FMAX3_AMD mat2x3 max3(mat2x3 x, mat2x3 y, mat2x3 z);
SPV_FMAX3_AMD mat2x4 max3(mat2x4 x, mat2x4 y, mat2x4 z);
SPV_FMAX3_AMD mat3x2 max3(mat3x2 x, mat3x2 y, mat3x2 z);
SPV_FMAX3_AMD mat3x3 max3(mat3x3 x, mat3x3 y, mat3x3 z);
SPV_FMAX3_AMD mat3x4 max3(mat3x4 x, mat3x4 y, mat3x4 z);
SPV_FMAX3_AMD mat4x2 max3(mat4x2 x, mat4x2 y, mat4x2 z);
SPV_FMAX3_AMD mat4x3 max3(mat4x3 x, mat4x3 y, mat4x3 z);
SPV_FMAX3_AMD mat4x4 max3(mat4x4 x, mat4x4 y, mat4x4 z);

#if defined(GL_AMD_gpu_shader_half_float) || defined(GL_EXT_shader_explicit_arithmetic_types_float16)
SPV_FMAX3_AMD float16_t max3(float16_t x, float16_t y, float16_t z);
SPV_FMAX3_AMD f16vec2 max3(f16vec2 x, f16vec2 y, f16vec2 z);
SPV_FMAX3_AMD f16vec3 max3(f16vec3 x, f16vec3 y, f16vec3 z);
SPV_FMAX3_AMD f16vec4 max3(f16vec4 x, f16vec4 y, f16vec4 z);
SPV_FMAX3_AMD f16mat2x2 max3(f16mat2x2 x, f16mat2x2 y, f16mat2x2 z);
SPV_FMAX3_AMD f16mat2x3 max3(f16mat2x3 x, f16mat2x3 y, f16mat2x3 z);
SPV_FMAX3_AMD f16mat2x4 max3(f16mat2x4 x, f16mat2x4 y, f16mat2x4 z);
SPV_FMAX3_AMD f16mat3x2 max3(f16mat3x2 x, f16mat3x2 y, f16mat3x2 z);
SPV_FMAX3_AMD f16mat3x3 max3(f16mat3x3 x, f16mat3x3 y, f16mat3x3 z);
SPV_FMAX3_AMD f16mat3x4 max3(f16mat3x4 x, f16mat3x4 y, f16mat3x4 z);
SPV_FMAX3_AMD f16mat4x2 max3(f16mat4x2 x, f16mat4x2 y, f16mat4x2 z);
SPV_FMAX3_AMD f16mat4x3 max3(f16mat4x3 x, f16mat4x3 y, f16mat4x3 z);
SPV_FMAX3_AMD f16mat4x4 max3(f16mat4x4 x, f16mat4x4 y, f16mat4x4 z);
#endif

SPV_UMAX3_AMD uint max3(uint x, uint y, uint z);
SPV_UMAX3_AMD uvec2 max3(uvec2 x, uvec2 y, uvec2 z);
SPV_UMAX3_AMD uvec3 max3(uvec3 x, uvec3 y, uvec3 z);
SPV_UMAX3_AMD uvec4 max3(uvec4 x, uvec4 y, uvec4 z);
SPV_UMAX3_AMD umat2x2 max3(umat2x2 x, umat2x2 y, umat2x2 z);
SPV_UMAX3_AMD umat2x3 max3(umat2x3 x, umat2x3 y, umat2x3 z);
SPV_UMAX3_AMD umat2x4 max3(umat2x4 x, umat2x4 y, umat2x4 z);
SPV_UMAX3_AMD umat3x2 max3(umat3x2 x, umat3x2 y, umat3x2 z);
SPV_UMAX3_AMD umat3x3 max3(umat3x3 x, umat3x3 y, umat3x3 z);
SPV_UMAX3_AMD umat3x4 max3(umat3x4 x, umat3x4 y, umat3x4 z);
SPV_UMAX3_AMD umat4x2 max3(umat4x2 x, umat4x2 y, umat4x2 z);
SPV_UMAX3_AMD umat4x3 max3(umat4x3 x, umat4x3 y, umat4x3 z);
SPV_UMAX3_AMD umat4x4 max3(umat4x4 x, umat4x4 y, umat4x4 z);

#if defined(GL_EXT_shader_explicit_arithmetic_types_int16)
SPV_UMAX3_AMD uint16_t max3(uint16_t x, uint16_t y, uint16_t z);
SPV_UMAX3_AMD u16vec2 max3(u16vec2 x, u16vec2 y, u16vec2 z);
SPV_UMAX3_AMD u16vec3 max3(u16vec3 x, u16vec3 y, u16vec3 z);
SPV_UMAX3_AMD u16vec4 max3(u16vec4 x, u16vec4 y, u16vec4 z);
SPV_UMAX3_AMD u16mat2x2 max3(u16mat2x2 x, u16mat2x2 y, u16mat2x2 z);
SPV_UMAX3_AMD u16mat2x3 max3(u16mat2x3 x, u16mat2x3 y, u16mat2x3 z);
SPV_UMAX3_AMD u16mat2x4 max3(u16mat2x4 x, u16mat2x4 y, u16mat2x4 z);
SPV_UMAX3_AMD u16mat3x2 max3(u16mat3x2 x, u16mat3x2 y, u16mat3x2 z);
SPV_UMAX3_AMD u16mat3x3 max3(u16mat3x3 x, u16mat3x3 y, u16mat3x3 z);
SPV_UMAX3_AMD u16mat3x4 max3(u16mat3x4 x, u16mat3x4 y, u16mat3x4 z);
SPV_UMAX3_AMD u16mat4x2 max3(u16mat4x2 x, u16mat4x2 y, u16mat4x2 z);
SPV_UMAX3_AMD u16mat4x3 max3(u16mat4x3 x, u16mat4x3 y, u16mat4x3 z);
SPV_UMAX3_AMD u16mat4x4 max3(u16mat4x4 x, u16mat4x4 y, u16mat4x4 z);
#endif

SPV_SMAX3_AMD int max3(int x, int y, int z);
SPV_SMAX3_AMD ivec2 max3(ivec2 x, ivec2 y, ivec2 z);
SPV_SMAX3_AMD ivec3 max3(ivec3 x, ivec3 y, ivec3 z);
SPV_SMAX3_AMD ivec4 max3(ivec4 x, ivec4 y, ivec4 z);
SPV_SMAX3_AMD imat2x2 max3(imat2x2 x, imat2x2 y, imat2x2 z);
SPV_SMAX3_AMD imat2x3 max3(imat2x3 x, imat2x3 y, imat2x3 z);
SPV_SMAX3_AMD imat2x4 max3(imat2x4 x, imat2x4 y, imat2x4 z);
SPV_SMAX3_AMD imat3x2 max3(imat3x2 x, imat3x2 y, imat3x2 z);
SPV_SMAX3_AMD imat3x3 max3(imat3x3 x, imat3x3 y, imat3x3 z);
SPV_SMAX3_AMD imat3x4 max3(imat3x4 x, imat3x4 y, imat3x4 z);
SPV_SMAX3_AMD imat4x2 max3(imat4x2 x, imat4x2 y, imat4x2 z);
SPV_SMAX3_AMD imat4x3 max3(imat4x3 x, imat4x3 y, imat4x3 z);
SPV_SMAX3_AMD imat4x4 max3(imat4x4 x, imat4x4 y, imat4x4 z);

#if defined(GL_EXT_shader_explicit_arithmetic_types_int16)
SPV_SMAX3_AMD int16_t max3(int16_t x, int16_t y, int16_t z);
SPV_SMAX3_AMD i16vec2 max3(i16vec2 x, i16vec2 y, i16vec2 z);
SPV_SMAX3_AMD i16vec3 max3(i16vec3 x, i16vec3 y, i16vec3 z);
SPV_SMAX3_AMD i16vec4 max3(i16vec4 x, i16vec4 y, i16vec4 z);
SPV_SMAX3_AMD i16mat2x2 max3(i16mat2x2 x, i16mat2x2 y, i16mat2x2 z);
SPV_SMAX3_AMD i16mat2x3 max3(i16mat2x3 x, i16mat2x3 y, i16mat2x3 z);
SPV_SMAX3_AMD i16mat2x4 max3(i16mat2x4 x, i16mat2x4 y, i16mat2x4 z);
SPV_SMAX3_AMD i16mat3x2 max3(i16mat3x2 x, i16mat3x2 y, i16mat3x2 z);
SPV_SMAX3_AMD i16mat3x3 max3(i16mat3x3 x, i16mat3x3 y, i16mat3x3 z);
SPV_SMAX3_AMD i16mat3x4 max3(i16mat3x4 x, i16mat3x4 y, i16mat3x4 z);
SPV_SMAX3_AMD i16mat4x2 max3(i16mat4x2 x, i16mat4x2 y, i16mat4x2 z);
SPV_SMAX3_AMD i16mat4x3 max3(i16mat4x3 x, i16mat4x3 y, i16mat4x3 z);
SPV_SMAX3_AMD i16mat4x4 max3(i16mat4x4 x, i16mat4x4 y, i16mat4x4 z);
#endif

SPV_FMID3_AMD float mid3(float x, float y, float z);
SPV_FMID3_AMD vec2 mid3(vec2 x, vec2 y, vec2 z);
SPV_FMID3_AMD vec3 mid3(vec3 x, vec3 y, vec3 z);
SPV_FMID3_AMD vec4 mid3(vec4 x, vec4 y, vec4 z);
SPV_FMID3_AMD mat2x2 mid3(mat2x2 x, mat2x2 y, mat2x2 z);
SPV_FMID3_AMD mat2x3 mid3(mat2x3 x, mat2x3 y, mat2x3 z);
SPV_FMID3_AMD mat2x4 mid3(mat2x4 x, mat2x4 y, mat2x4 z);
SPV_FMID3_AMD mat3x2 mid3(mat3x2 x, mat3x2 y, mat3x2 z);
SPV_FMID3_AMD mat3x3 mid3(mat3x3 x, mat3x3 y, mat3x3 z);
SPV_FMID3_AMD mat3x4 mid3(mat3x4 x, mat3x4 y, mat3x4 z);
SPV_FMID3_AMD mat4x2 mid3(mat4x2 x, mat4x2 y, mat4x2 z);
SPV_FMID3_AMD mat4x3 mid3(mat4x3 x, mat4x3 y, mat4x3 z);
SPV_FMID3_AMD mat4x4 mid3(mat4x4 x, mat4x4 y, mat4x4 z);

#if defined(GL_AMD_gpu_shader_half_float) || defined(GL_EXT_shader_explicit_arithmetic_types_float16)
SPV_FMID3_AMD float16_t mid3(float16_t x, float16_t y, float16_t z);
SPV_FMID3_AMD f16vec2 mid3(f16vec2 x, f16vec2 y, f16vec2 z);
SPV_FMID3_AMD f16vec3 mid3(f16vec3 x, f16vec3 y, f16vec3 z);
SPV_FMID3_AMD f16vec4 mid3(f16vec4 x, f16vec4 y, f16vec4 z);
SPV_FMID3_AMD f16mat2x2 mid3(f16mat2x2 x, f16mat2x2 y, f16mat2x2 z);
SPV_FMID3_AMD f16mat2x3 mid3(f16mat2x3 x, f16mat2x3 y, f16mat2x3 z);
SPV_FMID3_AMD f16mat2x4 mid3(f16mat2x4 x, f16mat2x4 y, f16mat2x4 z);
SPV_FMID3_AMD f16mat3x2 mid3(f16mat3x2 x, f16mat3x2 y, f16mat3x2 z);
SPV_FMID3_AMD f16mat3x3 mid3(f16mat3x3 x, f16mat3x3 y, f16mat3x3 z);
SPV_FMID3_AMD f16mat3x4 mid3(f16mat3x4 x, f16mat3x4 y, f16mat3x4 z);
SPV_FMID3_AMD f16mat4x2 mid3(f16mat4x2 x, f16mat4x2 y, f16mat4x2 z);
SPV_FMID3_AMD f16mat4x3 mid3(f16mat4x3 x, f16mat4x3 y, f16mat4x3 z);
SPV_FMID3_AMD f16mat4x4 mid3(f16mat4x4 x, f16mat4x4 y, f16mat4x4 z);
#endif

SPV_UMID3_AMD uint mid3(uint x, uint y, uint z);
SPV_UMID3_AMD uvec2 mid3(uvec2 x, uvec2 y, uvec2 z);
SPV_UMID3_AMD uvec3 mid3(uvec3 x, uvec3 y, uvec3 z);
SPV_UMID3_AMD uvec4 mid3(uvec4 x, uvec4 y, uvec4 z);
SPV_UMID3_AMD umat2x2 mid3(umat2x2 x, umat2x2 y, umat2x2 z);
SPV_UMID3_AMD umat2x3 mid3(umat2x3 x, umat2x3 y, umat2x3 z);
SPV_UMID3_AMD umat2x4 mid3(umat2x4 x, umat2x4 y, umat2x4 z);
SPV_UMID3_AMD umat3x2 mid3(umat3x2 x, umat3x2 y, umat3x2 z);
SPV_UMID3_AMD umat3x3 mid3(umat3x3 x, umat3x3 y, umat3x3 z);
SPV_UMID3_AMD umat3x4 mid3(umat3x4 x, umat3x4 y, umat3x4 z);
SPV_UMID3_AMD umat4x2 mid3(umat4x2 x, umat4x2 y, umat4x2 z);
SPV_UMID3_AMD umat4x3 mid3(umat4x3 x, umat4x3 y, umat4x3 z);
SPV_UMID3_AMD umat4x4 mid3(umat4x4 x, umat4x4 y, umat4x4 z);

#if defined(GL_EXT_shader_explicit_arithmetic_types_int16)
SPV_UMID3_AMD uint16_t mid3(uint16_t x, uint16_t y, uint16_t z);
SPV_UMID3_AMD u16vec2 mid3(u16vec2 x, u16vec2 y, u16vec2 z);
SPV_UMID3_AMD u16vec3 mid3(u16vec3 x, u16vec3 y, u16vec3 z);
SPV_UMID3_AMD u16vec4 mid3(u16vec4 x, u16vec4 y, u16vec4 z);
SPV_UMID3_AMD u16mat2x2 mid3(u16mat2x2 x, u16mat2x2 y, u16mat2x2 z);
SPV_UMID3_AMD u16mat2x3 mid3(u16mat2x3 x, u16mat2x3 y, u16mat2x3 z);
SPV_UMID3_AMD u16mat2x4 mid3(u16mat2x4 x, u16mat2x4 y, u16mat2x4 z);
SPV_UMID3_AMD u16mat3x2 mid3(u16mat3x2 x, u16mat3x2 y, u16mat3x2 z);
SPV_UMID3_AMD u16mat3x3 mid3(u16mat3x3 x, u16mat3x3 y, u16mat3x3 z);
SPV_UMID3_AMD u16mat3x4 mid3(u16mat3x4 x, u16mat3x4 y, u16mat3x4 z);
SPV_UMID3_AMD u16mat4x2 mid3(u16mat4x2 x, u16mat4x2 y, u16mat4x2 z);
SPV_UMID3_AMD u16mat4x3 mid3(u16mat4x3 x, u16mat4x3 y, u16mat4x3 z);
SPV_UMID3_AMD u16mat4x4 mid3(u16mat4x4 x, u16mat4x4 y, u16mat4x4 z);
#endif

SPV_SMID3_AMD int mid3(int x, int y, int z);
SPV_SMID3_AMD ivec2 mid3(ivec2 x, ivec2 y, ivec2 z);
SPV_SMID3_AMD ivec3 mid3(ivec3 x, ivec3 y, ivec3 z);
SPV_SMID3_AMD ivec4 mid3(ivec4 x, ivec4 y, ivec4 z);
SPV_SMID3_AMD imat2x2 mid3(imat2x2 x, imat2x2 y, imat2x2 z);
SPV_SMID3_AMD imat2x3 mid3(imat2x3 x, imat2x3 y, imat2x3 z);
SPV_SMID3_AMD imat2x4 mid3(imat2x4 x, imat2x4 y, imat2x4 z);
SPV_SMID3_AMD imat3x2 mid3(imat3x2 x, imat3x2 y, imat3x2 z);
SPV_SMID3_AMD imat3x3 mid3(imat3x3 x, imat3x3 y, imat3x3 z);
SPV_SMID3_AMD imat3x4 mid3(imat3x4 x, imat3x4 y, imat3x4 z);
SPV_SMID3_AMD imat4x2 mid3(imat4x2 x, imat4x2 y, imat4x2 z);
SPV_SMID3_AMD imat4x3 mid3(imat4x3 x, imat4x3 y, imat4x3 z);
SPV_SMID3_AMD imat4x4 mid3(imat4x4 x, imat4x4 y, imat4x4 z);

#if defined(GL_EXT_shader_explicit_arithmetic_types_int16)
SPV_SMID3_AMD int16_t mid3(int16_t x, int16_t y, int16_t z);
SPV_SMID3_AMD i16vec2 mid3(i16vec2 x, i16vec2 y, i16vec2 z);
SPV_SMID3_AMD i16vec3 mid3(i16vec3 x, i16vec3 y, i16vec3 z);
SPV_SMID3_AMD i16vec4 mid3(i16vec4 x, i16vec4 y, i16vec4 z);
SPV_SMID3_AMD i16mat2x2 mid3(i16mat2x2 x, i16mat2x2 y, i16mat2x2 z);
SPV_SMID3_AMD i16mat2x3 mid3(i16mat2x3 x, i16mat2x3 y, i16mat2x3 z);
SPV_SMID3_AMD i16mat2x4 mid3(i16mat2x4 x, i16mat2x4 y, i16mat2x4 z);
SPV_SMID3_AMD i16mat3x2 mid3(i16mat3x2 x, i16mat3x2 y, i16mat3x2 z);
SPV_SMID3_AMD i16mat3x3 mid3(i16mat3x3 x, i16mat3x3 y, i16mat3x3 z);
SPV_SMID3_AMD i16mat3x4 mid3(i16mat3x4 x, i16mat3x4 y, i16mat3x4 z);
SPV_SMID3_AMD i16mat4x2 mid3(i16mat4x2 x, i16mat4x2 y, i16mat4x2 z);
SPV_SMID3_AMD i16mat4x3 mid3(i16mat4x3 x, i16mat4x3 y, i16mat4x3 z);
SPV_SMID3_AMD i16mat4x4 mid3(i16mat4x4 x, i16mat4x4 y, i16mat4x4 z);
#endif

#undef SPV_FMIN3_AMD
#undef SPV_UMIN3_AMD
#undef SPV_SMIN3_AMD
#undef SPV_FMAX3_AMD
#undef SPV_UMAX3_AMD
#undef SPV_SMAX3_AMD
#undef SPV_FMID3_AMD
#undef SPV_UMID3_AMD
#undef SPV_SMID3_AMD