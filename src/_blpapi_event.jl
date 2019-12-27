function blpapi_Event_eventType(event)
    ccall((:blpapi_Event_eventType, blpapi3), Cint, (Ptr{Cvoid},), event)
end

function blpapi_Event_addRef(event)
    ccall((:blpapi_Event_addRef, blpapi3), Cint, (Ptr{Cvoid},), event)
end

function blpapi_Event_release(event)
    @check ccall((:blpapi_Event_release, blpapi3), Cint, (Ptr{Cvoid},), event)
end

function blpapi_EventQueue_create()
    ccall((:blpapi_EventQueue_create, blpapi3), Ptr{Cvoid}, ())
end

function blpapi_EventQueue_destroy(eventQueue)
    ccall((:blpapi_EventQueue_destroy, blpapi3), Cint, (Ptr{Cvoid},), eventQueue)
end

function blpapi_EventQueue_nextEvent(eventQueue, timeout)
    ccall((:blpapi_EventQueue_nextEvent, blpapi3), Ptr{Cvoid}, (Ptr{Cvoid}, Cint), eventQueue, Cint(timeout))
end

function blpapi_EventQueue_purge(eventQueue)
    ccall((:blpapi_EventQueue_purge, blpapi3), Cint, (Ptr{Cvoid},), eventQueue)
end

function blpapi_EventQueue_tryNextEvent(eventQueue, eventPointer)
    ccall((:blpapi_EventQueue_tryNextEvent, blpapi3), Cint, (Ptr{Cvoid}, Ref{Ptr{Cvoid}}), eventQueue, eventPointer)
end

function blpapi_MessageIterator_create(event)
    ccall((:blpapi_MessageIterator_create, blpapi3), Ptr{Cvoid}, (Ptr{Cvoid},), event)
end

function blpapi_MessageIterator_destroy(iterator)
    ccall((:blpapi_MessageIterator_destroy, blpapi3), Cvoid, (Ptr{Cvoid},), iterator)
end

function blpapi_MessageIterator_next(iterator, result)
    @check ccall((:blpapi_MessageIterator_next, blpapi3), Cint, (Ptr{Cvoid}, Ref{Ptr{Cvoid}}), iterator, result)
end


Event_eventType                              = blpapi_Event_eventType
Event_addRef                                 = blpapi_Event_addRef
Event_release                                = blpapi_Event_release
EventQueue_create                            = blpapi_EventQueue_create
EventQueue_destroy                           = blpapi_EventQueue_destroy
EventQueue_nextEvent                         = blpapi_EventQueue_nextEvent
EventQueue_purge                             = blpapi_EventQueue_purge
EventQueue_tryNextEvent                      = blpapi_EventQueue_tryNextEvent
MessageIterator_create                       = blpapi_MessageIterator_create
MessageIterator_destroy                      = blpapi_MessageIterator_destroy
MessageIterator_next                         = blpapi_MessageIterator_next

export blpapi_Event_eventType                             ,
       blpapi_Event_addRef                                ,
       blpapi_Event_release                               ,
       blpapi_EventQueue_create                           ,
       blpapi_EventQueue_destroy                          ,
       blpapi_EventQueue_nextEvent                        ,
       blpapi_EventQueue_purge                            ,
       blpapi_EventQueue_tryNextEvent                     ,
       blpapi_MessageIterator_create                      ,
       blpapi_MessageIterator_destroy                     ,
       blpapi_MessageIterator_next
