function blpapi_Message_numCorrelationIds(message)
    ccall((:blpapi_Message_numCorrelationIds, blpapi3), Cint, (Ptr{Cvoid},), message)
end

function blpapi_Message_correlationId(message, index)
    t=blpapi_CorrelationId_type(message,index)
    if  t == BLPAPI_CORRELATION_TYPE_INT
        blpapi_CorrelationId_intValue(message,index)
    elseif t == BLPAPI_CORRELATION_TYPE_POINTER
        blpapi_CorrelationId_strValue(message,index)
    else
        @debug "received unknown correlation id type $t"
        return ""
    end
end

function blpapi_Message_elements(message)
    ccall((:blpapi_Message_elements, blpapi3), Ptr{Cvoid}, (Ptr{Cvoid},), message)
end

function blpapi_Message_typeString(message)
    unsafe_string(ccall((:blpapi_Message_typeString, blpapi3), Cstring, (Ptr{Cvoid},), message))
end

function blpapi_Message_release(message)
    @check ccall((:blpapi_Message_release, blpapi3), Cint, (Ptr{Cvoid},), message)
end


Message_numCorrelationIds                    = blpapi_Message_numCorrelationIds
Message_correlationId                        = blpapi_Message_correlationId
Message_elements                             = blpapi_Message_elements
Message_typeString                           = blpapi_Message_typeString
Message_release                              = blpapi_Message_release

export blpapi_Message_numCorrelationIds                   ,
       blpapi_Message_correlationId                       ,
       blpapi_Message_elements                            ,
       blpapi_Message_typeString                          ,
       blpapi_Message_release                             