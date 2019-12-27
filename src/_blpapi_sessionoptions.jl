function blpapi_SessionOptions_create()
    ccall((:blpapi_SessionOptions_create, blpapi3), Ptr{Cvoid}, ())
end

function blpapi_SessionOptions_destroy(parameters)
    ccall((:blpapi_SessionOptions_destroy, blpapi3), Cvoid, (Ptr{Cvoid},), parameters)
end

function blpapi_SessionOptions_setServerHost(parameters, serverHost)
    @check ccall((:blpapi_SessionOptions_setServerHost, blpapi3), Cint, (Ptr{Cvoid}, Cstring), parameters, serverHost)
end

function blpapi_SessionOptions_setServerPort(parameters, serverPort)
    @check ccall((:blpapi_SessionOptions_setServerPort, blpapi3), Cint, (Ptr{Cvoid}, UInt16), parameters, UInt16(serverPort))
end

function blpapi_SessionOptions_setAutoRestartOnDisconnection(parameters, autoRestart::Bool)
	ccall((:blpapi_SessionOptions_setAutoRestartOnDisconnection, blpapi3), Cvoid, (Ptr{Cvoid},Cint), parameters, Cint(autoRestart))
end

SessionOptions_create                        = blpapi_SessionOptions_create
SessionOptions_destroy                       = blpapi_SessionOptions_destroy
SessionOptions_setServerHost                 = blpapi_SessionOptions_setServerHost
SessionOptions_setServerPort                 = blpapi_SessionOptions_setServerPort
SessionOptions_setAutoRestartOnDisconnection = blpapi_SessionOptions_setAutoRestartOnDisconnection

export blpapi_SessionOptions_create                       ,
       blpapi_SessionOptions_destroy                      ,
       blpapi_SessionOptions_setServerHost                ,
       blpapi_SessionOptions_setServerPort                ,
       blpapi_SessionOptions_setAutoRestartOnDisconnection
