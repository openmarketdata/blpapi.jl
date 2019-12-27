function blpapi_SubscriptionList_create()
    ccall((:blpapi_SubscriptionList_create, blpapi3), Ptr{Cvoid}, ())
end

function blpapi_SubscriptionList_destroy(list)
    ccall((:blpapi_SubscriptionList_destroy, blpapi3), Cvoid, (Ptr{Cvoid},), list)
end

function blpapi_SubscriptionList_add(list, subscriptionString::String, correlationId::Signed, fields, options, numfields::Signed, numOptions::Signed)
    ccall((:blpapi_SubscriptionList_add_intId, blpapi3_helper), Cint, (Ptr{Cvoid}, Cstring, Ptr{Ptr{UInt8}}, Ptr{Ptr{UInt8}}, Cint, Cint, Culonglong), list, subscriptionString, fields, options, numfields, numOptions, Culonglong(correlationId))
end

function blpapi_SubscriptionList_add(list, subscriptionString::String, correlationId::String, fields, options, numfields::Signed, numOptions::Signed)
	ccall((:blpapi_SubscriptionList_add_strId, blpapi3_helper), Cint, (Ptr{Cvoid}, Cstring, Ptr{Ptr{UInt8}}, Ptr{Ptr{UInt8}}, Cint, Cint, Cstring), list, subscriptionString, fields, options, numfields, numOptions, correlationId)
end

SubscriptionList_create          = blpapi_SubscriptionList_create         
SubscriptionList_destroy         = blpapi_SubscriptionList_destroy       
SubscriptionList_add             = blpapi_SubscriptionList_add 

export blpapi_SubscriptionList_create          ,
       blpapi_SubscriptionList_destroy         ,
	   blpapi_SubscriptionList_add
