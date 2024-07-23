#if defined(GL_RAY_GENERATION_SHADER_EXT) || defined(GL_INTERSECTION_SHADER_EXT) || defined(GL_ANY_HIT_SHADER_EXT) || defined(GL_CLOSEST_HIT_SHADER_EXT) || defined(GL_MISS_SHADER_EXT) || defined(GL_CALLABLE_SHADER_EXT)
#define GL_EXT_ray_tracing 1

spirv_extension ("SPV_KHR_ray_tracing")
spirv_capability (5353) 

#ifndef GL_EXT_ray_query
#define accelerationStructureEXT spirv_type (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], id = 5341)
#endif

#if defined(GL_RAY_GENERATION_SHADER_EXT) || defined(GL_CLOSEST_HIT_SHADER_EXT) || defined(GL_MISS_SHADER_EXT)
#define rayPayloadEXT spirv_storage_class (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], 5338)
#endif
#if defined(GL_ANY_HIT_SHADER_EXT) || defined(GL_CLOSEST_HIT_SHADER_EXT) || defined(GL_MISS_SHADER_EXT)
#define rayPayloadInEXT spirv_storage_class (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], 5342)
#endif
#if defined(GL_ANY_HIT_SHADER_EXT) || defined(GL_CLOSEST_HIT_SHADER_EXT) || defined(GL_INTERSECTION_SHADER_EXT)
#define hitAttributeEXT spirv_storage_class (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], 5339)
#endif
#if defined(GL_RAY_GENERATION_SHADER_EXT) || defined(GL_CLOSEST_HIT_SHADER_EXT) || defined(GL_MISS_SHADER_EXT) || defined((GL_CALLABLE_SHADER)
#define callableDataEXT spirv_storage_class (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], 5328)
#endif
#ifdef(GL_CALLABLE_SHADER)
#define callableDataInEXT spirv_storage_class (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], 5329)
#endif
#define shaderRecordEXT spirv_storage_class (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], 5343)

#ifndef GL_EXT_ray_query
const uint gl_RayFlagsNoneEXT = 0U;
const uint gl_RayFlagsOpaqueEXT = 1U;
const uint gl_RayFlagsNoOpaqueEXT = 2U;
const uint gl_RayFlagsTerminateOnFirstHitEXT = 4U;
const uint gl_RayFlagsSkipClosestHitShaderEXT = 8U;
const uint gl_RayFlagsCullBackFacingTrianglesEXT = 16U;
const uint gl_RayFlagsCullFrontFacingTrianglesEXT = 32U;
const uint gl_RayFlagsCullOpaqueEXT = 64U;
const uint gl_RayFlagsCullNoOpaqueEXT = 128U;
#endif

const uint gl_HitKindFrontFacingTriangleEXT = 0xFEU;
const uint gl_HitKindBackFacingTriangleEXT = 0xFFU;

const int gl_ScopeShaderCallEXT = 6;


spirv_decorate (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], 11, 5319) 
in uvec3 gl_LaunchIDEXT;
spirv_decorate (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], 11, 5320) 
in uvec3 gl_LaunchSizeEXT;

#if defined(GL_INTERSECTION_SHADER_EXT) || defined(GL_ANY_HIT_SHADER_EXT) || defined(GL_CLOSEST_HIT_SHADER_EXT)

spirv_decorate (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], 11, 7) 
in int gl_PrimitiveID;
spirv_decorate (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], 11, 6) 
in int gl_InstanceID;
spirv_decorate (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], 11, 5327) 
in int gl_InstanceCustomIndexEXT;
spirv_decorate (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], 11, 5352) 
in int gl_GeometryIndexEXT;
#endif

#if defined(GL_INTERSECTION_SHADER_EXT) || defined(GL_ANY_HIT_SHADER_EXT) || defined(GL_CLOSEST_HIT_SHADER_EXT) || defined(GL_MISS_SHADER_EXT)

spirv_decorate (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], 11, 5321) 
in vec3 gl_WorldRayOriginEXT;
spirv_decorate (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], 11, 5322) 
in vec3 gl_WorldRayDirectionEXT;
spirv_decorate (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], 11, 5323) 
in vec3 gl_ObjectRayOriginEXT;
spirv_decorate (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], 11, 5324) 
in vec3 gl_ObjectRayDirectionEXT;


spirv_decorate (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], 11, 5325) 
in float gl_RayTminEXT;
spirv_decorate (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], 11, 5326) 
in float gl_RayTmaxEXT;
spirv_decorate (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], 11, 5351) 
in uint gl_IncomingRayFlagsEXT;
#endif

#if defined(GL_ANY_HIT_SHADER_EXT) || defined(GL_CLOSEST_HIT_SHADER_EXT)

spirv_decorate (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], 11, 5326) 
in float gl_HitTEXT;
spirv_decorate (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], 11, 5333) 
in uint gl_HitKindEXT;
#endif

#if defined(GL_INTERSECTION_SHADER_EXT) || defined(GL_ANY_HIT_SHADER_EXT) || defined(GL_CLOSEST_HIT_SHADER_EXT)

spirv_decorate (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], 11, 5330) 
in mat4x3 gl_ObjectToWorldEXT;
#define gl_ObjectToWorld3x4EXT (transpose(gl_ObjectToWorldEXT))
spirv_decorate (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], 11, 5331) 
in mat4x3 gl_WorldToObjectEXT;
#define gl_WorldToObject3x4EXT (transpose(gl_WorldToObjectEXT))
#endif

#if defined(GL_RAY_GENERATION_SHADER_EXT) || defined(GL_CLOSEST_HIT_SHADER_EXT) || defined(GL_MISS_SHADER_EXT)
spirv_instruction (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353,4478], id = 5337) 
void traceRayEXT(accelerationStructureEXT topLevel,
           uint rayFlags,
           uint cullMask,
           uint sbtRecordOffset,
           uint sbtRecordStride,
           uint missIndex,
           vec3 origin,
           float Tmin,
           vec3 direction,
           float Tmax,
           int payload);
#endif

#ifdef GL_INTERSECTION_SHADER_EXT
spirv_instruction (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], id = 5334) 
bool reportIntersectionEXT(float hitT, uint hitKind);
#endif

#ifdef GL_ANY_HIT_SHADER_EXT
spirv_instruction (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], id = 5335) 
void ignoreIntersectionEXT();

spirv_instruction (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], id = 5336) 
void terminateRayEXT();
#endif

#if defined(GL_RAY_GENERATION_SHADER_EXT) || defined(GL_CLOSEST_HIT_SHADER_EXT) || defined(GL_MISS_SHADER_EXT) || defined(GL_CALLABLE_SHADER_EXT)
spirv_instruction (extensions = ["SPV_KHR_ray_tracing"], capabilities = [5353], id = 5344) 
void executeCallableEXT(uint sbtRecordIndex, int callable);
#endif
#endif


