function blpapi_Name_destroy(name)
    ccall((:blpapi_Name_destroy, blpapi3), Cvoid, (Ptr{Cvoid},), name)    
end

function blpapi_Name_string(name)
    unsafe_string(ccall((:blpapi_Name_string, blpapi3), Cstring, (Ptr{Cvoid},), name))
end


Name_destroy = blpapi_Name_destroy
Name_string  = blpapi_Name_string


export blpapi_Name_destroy,
       blpapi_Name_string