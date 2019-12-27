function blpapi_Session_create(parameters, handler::Ptr{Cvoid}, dispatcher, userData::Ptr{Cvoid})
    if userData!=C_NULL
        error("must have a handler function when queue is provided")
    end
    ccall((:blpapi_Session_create, blpapi3), Ptr{Cvoid}, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}), parameters, handler, dispatcher, userData)
end

function blpapi_Session_create(parameters, handler::Function, dispatcher, queue::Ptr{Cvoid})
    if queue==C_NULL
        error("must have a queue when handler function is provided")
    end
    uv_async_send=@cfunction(x->ccall(:uv_async_send,Cint,(Ptr{Cvoid},),x),Cint,(Ptr{Cvoid},))
    cond=Base.AsyncCondition(handler)
    @async wait(cond)
    ccall((:blpapi_Session_create_with_queue_handle, blpapi3_helper), Ptr{Cvoid}, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}), parameters, dispatcher, queue, uv_async_send, cond.handle)
end

function blpapi_Session_destroy(session)
    ccall((:blpapi_Session_destroy, blpapi3), Cvoid, (Ptr{Cvoid},), session)
end

function blpapi_Session_start(session)
    @check ccall((:blpapi_Session_start, blpapi3), Cint, (Ptr{Cvoid},), session)
end

function blpapi_Session_stop(session)
    @check ccall((:blpapi_Session_stop, blpapi3), Cint, (Ptr{Cvoid},), session)
end

function blpapi_Session_nextEvent(session, eventPointer, timeoutInMilliseconds)
    ccall((:blpapi_Session_nextEvent, blpapi3), Cint, (Ptr{Cvoid}, Ref{Ptr{Cvoid}}, UInt32), session, eventPointer, UInt32(timeoutInMilliseconds))
end

function blpapi_Session_tryNextEvent(session, eventPointer)
    ccall((:blpapi_Session_tryNextEvent, blpapi3), Cint, (Ptr{Cvoid}, Ref{Ptr{Cvoid}}), session, eventPointer)
end

function blpapi_Session_subscribe(session, subscriptionList, handle, requestLabel, requestLabelLen)
    @check ccall((:blpapi_Session_subscribe, blpapi3), Cint, (Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}, Cstring, Cint), session, subscriptionList, handle, requestLabel, Cint(requestLabelLen))
end

function blpapi_Session_resubscribe(session, resubscriptionList, requestLabel, requestLabelLen)
    @check ccall((:blpapi_Session_resubscribe, blpapi3), Cint, (Ptr{Cvoid}, Ptr{Cvoid}, Cstring, Cint), session, resubscriptionList, requestLabel, Cint(requestLabelLen))
end

function blpapi_Session_unsubscribe(session, unsubscriptionList, requestLabel, requestLabelLen)
    @check ccall((:blpapi_Session_unsubscribe, blpapi3), Cint, (Ptr{Cvoid}, Ptr{Cvoid}, Cstring, Cint), session, unsubscriptionList, requestLabel, Cint(requestLabelLen))
end

function blpapi_Session_cancel(session, correlationIds, numCorrelationIds, requestLabel, requestLabelLen)
    @check ccall((:blpapi_Session_cancel, blpapi3), Cint, (Ptr{Cvoid}, Ptr{Cvoid}, Cint, Cstring, Cint), session, correlationIds, Cint(numCorrelationIds), requestLabel, Cint(requestLabelLen))
end

function blpapi_Session_sendRequest(session, request, correlationId::Signed, identity, eventQueue, requestLabel, requestLabelLen)
        @check ccall((:blpapi_Session_sendRequest_intId, blpapi3_helper), Cint, (Ptr{Cvoid}, Ptr{Cvoid}, Clonglong, Ptr{Cvoid}, Ptr{Cvoid}, Cstring, Cint), session, request, correlationId, identity, eventQueue, requestLabel, Int32(requestLabelLen))
end

function blpapi_Session_sendRequest(session, request, correlationId::String, identity, eventQueue, requestLabel, requestLabelLen)
        @check ccall((:blpapi_Session_sendRequest_strId, blpapi3_helper), Cint, (Ptr{Cvoid}, Ptr{Cvoid}, Cstring, Ptr{Cvoid}, Ptr{Cvoid}, Cstring, Cint), session, request, pointer(correlationId), identity, eventQueue, requestLabel, Int32(requestLabelLen))
end

function blpapi_Session_openService(session, serviceName)
    @check ccall((:blpapi_Session_openService, blpapi3), Cint, (Ptr{Cvoid}, Cstring), session, serviceName)
end

function blpapi_Session_getService(session, service, serviceName)
    @check ccall((:blpapi_Session_getService, blpapi3), Cint, (Ptr{Cvoid}, Ref{Ptr{Cvoid}}, Cstring), session, service, serviceName)
end

Session_create                               = blpapi_Session_create
Session_destroy                              = blpapi_Session_destroy
Session_start                                = blpapi_Session_start
Session_stop                                 = blpapi_Session_stop
Session_nextEvent                            = blpapi_Session_nextEvent
Session_tryNextEvent                         = blpapi_Session_tryNextEvent
Session_subscribe                            = blpapi_Session_subscribe
Session_resubscribe                          = blpapi_Session_resubscribe
Session_unsubscribe                          = blpapi_Session_unsubscribe
Session_cancel                               = blpapi_Session_cancel
Session_sendRequest                          = blpapi_Session_sendRequest
Session_openService                          = blpapi_Session_openService
Session_getService                           = blpapi_Session_getService


export blpapi_Session_create                              ,
       blpapi_Session_destroy                             ,
       blpapi_Session_start                               ,
       blpapi_Session_stop                                ,
       blpapi_Session_nextEvent                           ,
       blpapi_Session_tryNextEvent                        ,
       blpapi_Session_subscribe                           ,
       blpapi_Session_resubscribe                         ,
       blpapi_Session_unsubscribe                         ,
       blpapi_Session_cancel                              ,
       blpapi_Session_sendRequest                         ,
       blpapi_Session_openService                         ,
       blpapi_Session_getService                          
