#define GL_EXT_ray_query 1

#define rayQueryEXT spirv_type (extensions = ["SPV_KHR_ray_query"], capabilities = [4472], id = 4472)

#ifndef GL_EXT_ray_tracing
#define accelerationStructureEXT spirv_type (extensions = ["SPV_KHR_ray_query"], capabilities = [4472], id = 5341)

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

const uint gl_RayQueryCommittedIntersectionNoneEXT = 0U;
const uint gl_RayQueryCommittedIntersectionTriangleEXT = 1U;
const uint gl_RayQueryCommittedIntersectionGeneratedEXT = 2U;

const uint gl_RayQueryCandidateIntersectionTriangleEXT = 0U;
const uint gl_RayQueryCandidateIntersectionAABBEXT = 1U;

spirv_instruction (extensions = ["SPV_KHR_ray_query"], capabilities = [4471,4478], id = 4473) 
void rayQueryInitializeEXT(spirv_by_reference rayQueryEXT rayQuery, accelerationStructureEXT topLevel, uint rayFlags, uint cullMask, vec3 origin, float tMin, vec3 direction, float tMax);

spirv_instruction (extensions = ["SPV_KHR_ray_query"], capabilities = [4472], id = 4477) 
bool rayQueryProceedEXT(spirv_by_reference rayQueryEXT q);

spirv_instruction (extensions = ["SPV_KHR_ray_query"], capabilities = [4472], id = 4474) 
void rayQueryTerminateEXT(spirv_by_reference rayQueryEXT q);

spirv_instruction (extensions = ["SPV_KHR_ray_query"], capabilities = [4472], id = 4475) 
void rayQueryGenerateIntersectionEXT(spirv_by_reference rayQueryEXT q, float tHit);

spirv_instruction (extensions = ["SPV_KHR_ray_query"], capabilities = [4472], id = 4476) 
void rayQueryConfirmIntersectionEXT(spirv_by_reference rayQueryEXT q);

uint rayQueryGetIntersectionTypeEXT(spirv_by_reference rayQueryEXT q, bool committed) {
    spirv_instruction (extensions = ["SPV_KHR_ray_query"], capabilities = [4472], id = 4479) 
    uint rayQueryGetIntersectionTypeEXT_internal(spirv_by_reference rayQueryEXT q, uint committed);

    return rayQueryGetIntersectionTypeEXT_internal(q, committed ? 1 : 0);
}

spirv_instruction (extensions = ["SPV_KHR_ray_query"], capabilities = [4472], id = 6016) 
float rayQueryGetRayTMinEXT(spirv_by_reference rayQueryEXT q);

spirv_instruction (extensions = ["SPV_KHR_ray_query"], capabilities = [4472], id = 6016) 
uint rayQueryGetRayFlagsEXT(spirv_by_reference rayQueryEXT q);

spirv_instruction (extensions = ["SPV_KHR_ray_query"], capabilities = [4472], id = 6030) 
vec3 rayQueryGetWorldRayOriginEXT(spirv_by_reference rayQueryEXT q);

spirv_instruction (extensions = ["SPV_KHR_ray_query"], capabilities = [4472], id = 6029) 
vec3 rayQueryGetWorldRayDirectionEXT(spirv_by_reference rayQueryEXT q);

float rayQueryGetIntersectionTEXT(spirv_by_reference rayQueryEXT q, bool committed) {
    spirv_instruction (extensions = ["SPV_KHR_ray_query"], capabilities = [4472], id = 6018) 
    float rayQueryGetIntersectionTEXT_internal(spirv_by_reference rayQueryEXT q, uint committed);

    return rayQueryGetIntersectionTEXT_internal(q, committed ? 1 : 0);
}

int rayQueryGetIntersectionInstanceCustomIndexEXT(spirv_by_reference rayQueryEXT q, bool committed) {
    spirv_instruction (extensions = ["SPV_KHR_ray_query"], capabilities = [4472], id = 6019) 
    int rayQueryGetIntersectionInstanceCustomIndexEXT_internal(spirv_by_reference rayQueryEXT q, uint committed);

    return rayQueryGetIntersectionInstanceCustomIndexEXT_internal(q, committed ? 1 : 0);
}

int rayQueryGetIntersectionInstanceIdEXT(spirv_by_reference rayQueryEXT q, bool committed) {
    spirv_instruction (extensions = ["SPV_KHR_ray_query"], capabilities = [4472], id = 6020) 
    int rayQueryGetIntersectionInstanceIdEXT_internal(spirv_by_reference rayQueryEXT q, uint committed);

    return rayQueryGetIntersectionInstanceIdEXT_internal(q, committed ? 1 : 0);
}

uint rayQueryGetIntersectionInstanceShaderBindingTableRecordOffsetEXT(spirv_by_reference rayQueryEXT q, bool committed) {
    spirv_instruction (extensions = ["SPV_KHR_ray_query"], capabilities = [4472], id = 6021) 
    uint rayQueryGetIntersectionInstanceShaderBindingTableRecordOffsetEXT_internal(spirv_by_reference rayQueryEXT q, uint committed);

    return rayQueryGetIntersectionInstanceShaderBindingTableRecordOffsetEXT_internal(q, committed ? 1 : 0);
}

int rayQueryGetIntersectionGeometryIndexEXT(spirv_by_reference rayQueryEXT q, bool committed) {
    spirv_instruction (extensions = ["SPV_KHR_ray_query"], capabilities = [4472], id = 6022) 
    int rayQueryGetIntersectionGeometryIndexEXT_internal(spirv_by_reference rayQueryEXT q, uint committed);

    return rayQueryGetIntersectionGeometryIndexEXT_internal(q, committed ? 1 : 0);
}

int rayQueryGetIntersectionPrimitiveIndexEXT(spirv_by_reference rayQueryEXT q, bool committed) {
    spirv_instruction (extensions = ["SPV_KHR_ray_query"], capabilities = [4472], id = 6023) 
    int rayQueryGetIntersectionPrimitiveIndexEXT_internal(spirv_by_reference rayQueryEXT q, uint committed);

    return rayQueryGetIntersectionPrimitiveIndexEXT_internal(q, committed ? 1 : 0);
}

vec2 rayQueryGetIntersectionBarycentricsEXT(spirv_by_reference rayQueryEXT q, bool committed) {
    spirv_instruction (extensions = ["SPV_KHR_ray_query"], capabilities = [4472], id = 6024) 
    vec2 rayQueryGetIntersectionBarycentricsEXT_internal(spirv_by_reference rayQueryEXT q, uint committed);

    return rayQueryGetIntersectionBarycentricsEXT_internal(q, committed ? 1 : 0);
}

bool rayQueryGetIntersectionFrontFaceEXT(spirv_by_reference rayQueryEXT q, bool committed) {
    spirv_instruction (extensions = ["SPV_KHR_ray_query"], capabilities = [4472], id = 6025) 
    bool rayQueryGetIntersectionFrontFaceEXT_internal(spirv_by_reference rayQueryEXT q, uint committed);

    return rayQueryGetIntersectionFrontFaceEXT_internal(q, committed ? 1 : 0);
}

spirv_instruction (extensions = ["SPV_KHR_ray_query"], capabilities = [4472], id = 6026) 
bool rayQueryGetIntersectionCandidateAABBOpaqueEXT(spirv_by_reference rayQueryEXT q);

vec3 rayQueryGetIntersectionObjectRayDirectionEXT(spirv_by_reference rayQueryEXT q, bool committed) {
    spirv_instruction (extensions = ["SPV_KHR_ray_query"], capabilities = [4472], id = 6027) 
    vec3 rayQueryGetIntersectionObjectRayDirectionEXT_internal(spirv_by_reference rayQueryEXT q, uint committed);

    return rayQueryGetIntersectionObjectRayDirectionEXT_internal(q, committed ? 1 : 0);
}

vec3 rayQueryGetIntersectionObjectRayOriginEXT(spirv_by_reference rayQueryEXT q, bool committed) {
    spirv_instruction (extensions = ["SPV_KHR_ray_query"], capabilities = [4472], id = 6028) 
    vec3 rayQueryGetIntersectionObjectRayOriginEXT_internal(spirv_by_reference rayQueryEXT q, uint committed);

    return rayQueryGetIntersectionObjectRayOriginEXT_internal(q, committed ? 1 : 0);
}

mat4x3 rayQueryGetIntersectionObjectToWorldEXT(spirv_by_reference rayQueryEXT q, bool committed) {
    spirv_instruction (extensions = ["SPV_KHR_ray_query"], capabilities = [4472], id = 6031) 
    mat4x3 rayQueryGetIntersectionObjectToWorldEXT_internal(spirv_by_reference rayQueryEXT q, uint committed);

    return rayQueryGetIntersectionObjectToWorldEXT_internal(q, committed ? 1 : 0);
}

mat4x3 rayQueryGetIntersectionWorldToObjectEXT(spirv_by_reference rayQueryEXT q, bool committed) {
    spirv_instruction (extensions = ["SPV_KHR_ray_query"], capabilities = [4472], id = 6032) 
    mat4x3 rayQueryGetIntersectionWorldToObjectEXT_internal(spirv_by_reference rayQueryEXT q, uint committed);

    return rayQueryGetIntersectionWorldToObjectEXT_internal(q, committed ? 1 : 0);
}