function blpapi_getLastErrorDescription(resultCode)
    unsafe_string(ccall((:blpapi_getLastErrorDescription, blpapi3), Cstring, (Cint,), Cint(resultCode)))
end

macro check(fn)
    :(res = $(esc(fn));res>0 ? error(blpapi_getLastErrorDescription(res)) : res)
end

getLastErrorDescription = blpapi_getLastErrorDescription

export blpapi_getLastErrorDescription
