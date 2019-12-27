using blpapi
using Test

print("Testing 1: API Version 3.8.18.1\n")
@test blpapi.BLPAPI_SDK_VERSION == 198674 # 3.8.18.1

print("Testing 2: Error Descriptions\n")
@test blpapi_getLastErrorDescription(1) == "BLPAPI_ERROR_UNKNOWN"
@test blpapi_getLastErrorDescription(6) == "BLPAPI_ERROR_INTERNAL_ERROR"

print("Testing 3: Session Options\n")
session_options=blpapi_SessionOptions_create()
@test (typeof(session_options) == typeof(C_NULL)) && (session_options != C_NULL)
@test blpapi_SessionOptions_setServerHost(session_options,"localhost") == 0
@test blpapi_SessionOptions_setServerPort(session_options,8194) == 0
@test blpapi_SessionOptions_setAutoRestartOnDisconnection(session_options,true) === nothing

print("Testing 4: Start Session\n")
session=blpapi_Session_create(session_options,C_NULL,C_NULL,C_NULL)
@test blpapi_SessionOptions_destroy(session_options) === nothing
@test (typeof(session) == typeof(C_NULL)) && (session != C_NULL) 
@test blpapi_Session_start(session) == 0
@blpapi_setPointer event blpapi_Session_nextEvent(session,event,1000)
@test (typeof(event) == typeof(C_NULL)) && (event != C_NULL)
@test blpapi_Event_eventType(event) == 2
@test blpapi_Event_release(event) == 0

print("Testing 5: Open Services\n")
@test blpapi_Session_openService(session,"//blp/refdata") == 0
@blpapi_setPointer refdata blpapi_Session_getService(session,refdata,"//blp/refdata")
@test (typeof(refdata) == typeof(C_NULL)) && (refdata != C_NULL)
@test blpapi_Session_openService(session,"//blp/mktdata") == 0
@blpapi_setPointer mktdata blpapi_Session_getService(session,mktdata,"//blp/mktdata")
@test (typeof(mktdata) == typeof(C_NULL)) && (mktdata != C_NULL)

print("Testing 7: Stop Session\n")
@test blpapi_Session_stop(session) == 0
@test blpapi_Session_destroy(session) === nothing





