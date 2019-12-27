function blpapi_CorrelationId_type(message,index) 
    ccall((:blpapi_CorrelationId_type,blpapi3_helper),Cint,(Ptr{Cvoid},Csize_t),message,Csize_t(index))
end

debug_var=111

function blpapi_CorrelationId_intValue(message,index) 
    ccall((:blpapi_CorrelationId_intValue,blpapi3_helper),Clonglong,(Ptr{Cvoid},Csize_t),message,Csize_t(index))
end

function blpapi_CorrelationId_strValue(message,index) 
    unsafe_string(ccall((:blpapi_CorrelationId_strValue,blpapi3_helper),Cstring,(Ptr{Cvoid},Csize_t),message,Csize_t(index)))
end


CorrelationId_type         = blpapi_CorrelationId_type       
CorrelationId_intValue     = blpapi_CorrelationId_intValue   
CorrelationId_strValue     = blpapi_CorrelationId_strValue   


export blpapi_CorrelationId_type         ,
       blpapi_CorrelationId_intValue     ,
       blpapi_CorrelationId_strValue     
