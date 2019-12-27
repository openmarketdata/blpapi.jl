function blpapi_Request_elements(request)
    ccall((:blpapi_Request_elements, blpapi3), Ptr{Cvoid}, (Ptr{Cvoid},), request)
end

function blpapi_Request_destroy(request)
    ccall((:blpapi_Request_destroy, blpapi3), Cvoid, (Ptr{Cvoid},), request)
end

Request_elements                             = blpapi_Request_elements
Request_destroy                              = blpapi_Request_destroy

export blpapi_Request_elements ,
       blpapi_Request_destroy