function blpapi_getVersionIdentifier()
    unsafe_string(ccall((:blpapi_getVersionIdentifier,blpapi3),Cstring,()))
end

function blpapi_getVersionInfo(majorVersion, minorVersion, patchVersion, buildVersion)
    ccall((:blpapi_getVersionInfo, blpapi3), Cvoid, (Ref{Cint}, Ref{Cint}, Ref{Cint}, Ref{Cint}), majorVersion, minorVersion, patchVersion, buildVersion)    
end

macro BLPAPI_MAKE_VERSION(MAJOR, MINOR, PATCH)
    :($MAJOR*65536 + $MINOR*256 + $PATCH)
end

const BLPAPI_SDK_VERSION = eval(
    quote
        majorVersion = Ref{Cint}(0)
        minorVersion = Ref{Cint}(0)
        patchVersion = Ref{Cint}(0)
        buildVersion = Ref{Cint}(0)
        blpapi_getVersionInfo(majorVersion, minorVersion, patchVersion, buildVersion)
        @BLPAPI_MAKE_VERSION(majorVersion[], minorVersion[], patchVersion[])
    end)

getVersionIdentifier = blpapi_getVersionIdentifier
getVersionInfo       = blpapi_getVersionInfo

export blpapi_getVersionIdentifier,
       blpapi_getVersionInfo