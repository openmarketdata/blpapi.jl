mutable struct blpapi_Datetime
    parts::UInt8
    hours::UInt8
    minutes::UInt8
    seconds::UInt8
    milliSeconds::UInt16
    month::UInt8
    day::UInt8
    year::UInt16
    offset::Int16
end

Datetime = blpapi_Datetime
export blpapi_Datetime

mutable struct blpapi_HighPrecisionDatetime
    datetime::blpapi_Datetime
    picoseconds::UInt32
end

HighPrecisionDatetime = blpapi_HighPrecisionDatetime
export blpapi_HighPrecisionDatetime
