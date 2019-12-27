function blpapi_Operation_name(service)
    unsafe_string(ccall((:blpapi_Operation_name, blpapi3), Cstring, (Ptr{Cvoid},), service))
end

function blpapi_Operation_description(service)
    unsafe_string(ccall((:blpapi_Operation_description, blpapi3), Cstring, (Ptr{Cvoid},), service))
end

function blpapi_Operation_requestDefinition(service, requestDefinition)
    ccall((:blpapi_Operation_requestDefinition, blpapi3), Cint, (Ptr{Cvoid}, Ref{Ptr{Cvoid}}), service, requestDefinition)
end

function blpapi_Operation_numResponseDefinitions(service)
    ccall((:blpapi_Operation_numResponseDefinitions, blpapi3), Cint, (Ptr{Cvoid},), service)
end

function blpapi_Operation_responseDefinition(service, responseDefinition, index)
    ccall((:blpapi_Operation_responseDefinition, blpapi3), Cint, (Ptr{Cvoid}, Ref{Ptr{Cvoid}}, Cint), service, responseDefinition, Cint(index))
end

function blpapi_Service_name(service)
    unsafe_string(ccall((:blpapi_Service_name, blpapi3), Cstring, (Ptr{Cvoid},), service))
end

function blpapi_Service_numOperations(service)
    ccall((:blpapi_Service_numOperations, blpapi3), Cint, (Ptr{Cvoid},), service)
end

function blpapi_Service_numEventDefinitions(service)
    ccall((:blpapi_Service_numEventDefinitions, blpapi3), Cint, (Ptr{Cvoid},), service)
end

function blpapi_Service_release(service)
    ccall((:blpapi_Service_release, blpapi3), Cvoid, (Ptr{Cvoid},), service)
end

function blpapi_Service_getOperationAt(service, operation, index)
    @check ccall((:blpapi_Service_getOperationAt, blpapi3), Cint, (Ptr{Cvoid}, Ref{Ptr{Cvoid}}, Cint), service, operation, Int32(index))
end

function blpapi_Service_getEventDefinitionAt(service, result, index)
    @check ccall((:blpapi_Service_getEventDefinitionAt, blpapi3), Cint, (Ptr{Cvoid}, Ref{Ptr{Cvoid}}, Cint), service, result, Int32(index))
end

function blpapi_Service_createRequest(service, request, operation)
    @check ccall((:blpapi_Service_createRequest, blpapi3), Cint, (Ptr{Cvoid}, Ref{Ptr{Cvoid}}, Cstring), service, request, operation)
end


Operation_name                               = blpapi_Operation_name
Operation_description                        = blpapi_Operation_description
Operation_requestDefinition                  = blpapi_Operation_requestDefinition
Operation_numResponseDefinitions             = blpapi_Operation_numResponseDefinitions
Operation_responseDefinition                 = blpapi_Operation_responseDefinition
Service_name                                 = blpapi_Service_name
Service_numOperations                        = blpapi_Service_numOperations
Service_numEventDefinitions                  = blpapi_Service_numEventDefinitions
Service_release                              = blpapi_Service_release
Service_getOperationAt                       = blpapi_Service_getOperationAt
Service_getEventDefinitionAt                 = blpapi_Service_getEventDefinitionAt
Service_createRequest                        = blpapi_Service_createRequest

export blpapi_Operation_name                              ,
       blpapi_Operation_description                       ,
       blpapi_Operation_requestDefinition                 ,
       blpapi_Operation_numResponseDefinitions            ,
       blpapi_Operation_responseDefinition                ,
       blpapi_Service_name                                ,
       blpapi_Service_numOperations                       ,
       blpapi_Service_numEventDefinitions                 ,
       blpapi_Service_release                             ,
       blpapi_Service_getOperationAt                      ,
       blpapi_Service_getEventDefinitionAt                ,
       blpapi_Service_createRequest                       
