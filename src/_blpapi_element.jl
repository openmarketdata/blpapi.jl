function blpapi_Element_name(element)
    ccall((:blpapi_Element_name, blpapi3), Ptr{Cvoid}, (Ptr{Cvoid},), element)
end

function blpapi_Element_nameString(element)
    unsafe_string(ccall((:blpapi_Element_nameString, blpapi3), Cstring, (Ptr{Cvoid},), element))
end

function blpapi_Element_definition(element)
    ccall((:blpapi_Element_definition, blpapi3), Ptr{Cvoid}, (Ptr{Cvoid},), element)
end

function blpapi_Element_datatype(element)
    ccall((:blpapi_Element_datatype, blpapi3), Cint, (Ptr{Cvoid},), element)
end

function blpapi_Element_isComplexType(element)
    Bool(ccall((:blpapi_Element_isComplexType, blpapi3), Cint, (Ptr{Cvoid},), element))
end

function blpapi_Element_isArray(element)
    Bool(ccall((:blpapi_Element_isArray, blpapi3), Cint, (Ptr{Cvoid},), element))
end

function blpapi_Element_isReadOnly(element)
    Bool(ccall((:blpapi_Element_isReadOnly, blpapi3), Cint, (Ptr{Cvoid},), element))
end

function blpapi_Element_numValues(element)
    ccall((:blpapi_Element_numValues, blpapi3), Cint, (Ptr{Cvoid},), element)
end

function blpapi_Element_numElements(element)
    ccall((:blpapi_Element_numElements, blpapi3), Cint, (Ptr{Cvoid},), element)
end

function blpapi_Element_isNullValue(element, position)
    Bool(ccall((:blpapi_Element_isNullValue, blpapi3), Cint, (Ptr{Cvoid}, Csize_t), element, Csize_t(position)))
end

function blpapi_Element_isNull(element)
    ccall((:blpapi_Element_isNull, blpapi3), Cint, (Ptr{Cvoid},), element)
end

function blpapi_Element_print(element,streamWriter,stream,level,spacesPerLevel)
    ccall((:blpapi_Element_print, blpapi3), Cint, (Ptr{Cvoid},Ptr{Cvoid},Ptr{Cvoid},Cint,Cint), element,streamWriter,stream,level,spacesPerLevel)
end

function blpapi_Element_getElementAt(element, result, position)
    @check ccall((:blpapi_Element_getElementAt, blpapi3), Cint, (Ptr{Cvoid}, Ref{Ptr{Cvoid}}, Csize_t), element, result, Csize_t(position))
end

function blpapi_Element_getElement(element, result, nameString, name)
    @check ccall((:blpapi_Element_getElement, blpapi3), Cint, (Ptr{Cvoid}, Ref{Ptr{Cvoid}}, Cstring, Ptr{Cvoid}), element, result, nameString, name)
end

function blpapi_Element_hasElement(element, nameString, name)
    Bool(ccall((:blpapi_Element_hasElement, blpapi3), Cint, (Ptr{Cvoid}, Cstring, Ptr{Cvoid}), element, nameString, name))
end

function blpapi_Element_hasElementEx(element, nameString, name, excludeNullElements, reserved)
    Bool(ccall((:blpapi_Element_hasElementEx, blpapi3), Cint, (Ptr{Cvoid}, Cstring, Ptr{Cvoid}, Cint, Cint), element, nameString, name, Int32(excludeNullElements), Int32(reserved)))
end

function blpapi_Element_getValueAsBool(element, buffer, index)
    @check ccall((:blpapi_Element_getValueAsBool, blpapi3), Cint, (Ptr{Cvoid}, Ref{Int32}, Csize_t), element, buffer, Csize_t(index))
end

function blpapi_Element_getValueAsChar(element, buffer, index)
    @check ccall((:blpapi_Element_getValueAsChar, blpapi3), Cint, (Ptr{Cvoid}, Ref{UInt8}, Csize_t), element, buffer, Csize_t(index))
end

function blpapi_Element_getValueAsInt32(element, buffer, index)
    @check ccall((:blpapi_Element_getValueAsInt32, blpapi3), Cint, (Ptr{Cvoid}, Ref{Int32}, Csize_t), element, buffer, Csize_t(index))
end

function blpapi_Element_getValueAsInt64(element, buffer, index)
    @check ccall((:blpapi_Element_getValueAsInt64, blpapi3), Cint, (Ptr{Cvoid}, Ref{Int64}, Csize_t), element, buffer, Csize_t(index))
end

function blpapi_Element_getValueAsFloat32(element, buffer, index)
    @check ccall((:blpapi_Element_getValueAsFloat32, blpapi3), Cint, (Ptr{Cvoid}, Ref{Float32}, Csize_t), element, buffer, Csize_t(index))
end

function blpapi_Element_getValueAsFloat64(element, buffer, index)
    @check ccall((:blpapi_Element_getValueAsFloat64, blpapi3), Cint, (Ptr{Cvoid}, Ref{Float64}, Csize_t), element, buffer, Csize_t(index))
end

function blpapi_Element_getValueAsString(element, buffer, index)
    @check ccall((:blpapi_Element_getValueAsString, blpapi3), Cint, (Ptr{Cvoid}, Ref{Ptr{UInt8}}, Csize_t), element, buffer, Csize_t(index))
end

function blpapi_Element_getValueAsDatetime(element, buffer, index)
    @check ccall((:blpapi_Element_getValueAsDatetime, blpapi3), Cint, (Ptr{Cvoid}, Ref{blpapi_Datetime}, Csize_t), element, buffer, Csize_t(index))
end

function blpapi_Element_getValueAsHighPrecisionDatetime(element, buffer, index)
    @check ccall((:blpapi_Element_getValueAsHighPrecisionDatetime, blpapi3), Cint, (Ptr{Cvoid}, Ref{blpapi_HighPrecisionDatetime}, Csize_t), element, buffer, Csize_t(index))
end

function blpapi_Element_getValueAsElement(element, buffer, index)
    @check ccall((:blpapi_Element_getValueAsElement, blpapi3), Cint, (Ptr{Cvoid}, Ref{Ptr{Cvoid}}, Csize_t), element, buffer, Csize_t(index))
end

function blpapi_Element_getValueAsName(element, buffer, index)
    @check ccall((:blpapi_Element_getValueAsName, blpapi3), Cint, (Ptr{Cvoid}, Ptr{Ptr{Cvoid}}, Csize_t), element, buffer, Csize_t(index))
end

function blpapi_Element_getChoice(element, result)
    @check ccall((:blpapi_Element_getChoice, blpapi3), Cint, (Ptr{Cvoid}, Ref{Ptr{Cvoid}}), element, result)
end

function blpapi_Element_setValueBool(element, value::Bool, index)
    ccall((:blpapi_Element_setValueBool, blpapi3), Cint, (Ptr{Cvoid}, Cint, Csize_t), element, value, Csize_t(index))
end

function blpapi_Element_setValueChar(element, value::Char, index)
    ccall((:blpapi_Element_setValueChar, blpapi3), Cint, (Ptr{Cvoid}, Cchar, Csize_t), element, value, Csize_t(index))
end

function blpapi_Element_setValueInt32(element, value::Signed, index)
    ccall((:blpapi_Element_setValueInt32, blpapi3), Cint, (Ptr{Cvoid}, Cint, Csize_t), element, value, Csize_t(index))
end

function blpapi_Element_setValueInt64(element, value::Signed, index)
    ccall((:blpapi_Element_setValueInt64, blpapi3), Cint, (Ptr{Cvoid}, Clonglong, Csize_t), element, value, Csize_t(index))
end

function blpapi_Element_setValueFloat32(element, value::AbstractFloat, index)
    ccall((:blpapi_Element_setValueFloat32, blpapi3), Cint, (Ptr{Cvoid}, Cfloat, Csize_t), element, value, Csize_t(index))
end

function blpapi_Element_setValueFloat64(element, value::AbstractFloat, index)
    ccall((:blpapi_Element_setValueFloat64, blpapi3), Cint, (Ptr{Cvoid}, Cdouble, Csize_t), element, value, Csize_t(index))
end

function blpapi_Element_setValueString(element, value::String, index)
    @check ccall((:blpapi_Element_setValueString, blpapi3), Cint, (Ptr{Cvoid}, Cstring, Csize_t), element, value, Csize_t(index))
end

function blpapi_Element_setValueDatetime(element, value::Ref{blpapi_Datetime}, index)
    ccall((:blpapi_Element_setValueDatetime, blpapi3), Cint, (Ptr{Cvoid}, Ref{blpapi_Datetime}, Csize_t), element, value, Csize_t(index))
end

function blpapi_Element_setValueHighPrecisionDatetime(element, value::Ref{blpapi_HighPrecisionDatetime}, index)
    ccall((:blpapi_Element_setValueHighPrecisionDatetime, blpapi3), Cint, (Ptr{Cvoid}, Ref{blpapi_HighPrecisionDatetime}, Csize_t), element, value, Csize_t(index))
end

function blpapi_Element_setValueFromElement(element, value, index)
    ccall((:blpapi_Element_setValueFromElement, blpapi3), Cint, (Ptr{Cvoid}, Ptr{Cvoid}, Csize_t), element, value, Csize_t(index))
end

function blpapi_Element_setValueFromName(element, value, index)
    ccall((:blpapi_Element_setValueFromName, blpapi3), Cint, (Ptr{Cvoid}, Ptr{Cvoid}, Csize_t), element, value, Csize_t(index))
end

function blpapi_Element_setElementBool(element, nameString, name, value::Bool)
    ccall((:blpapi_Element_setElementBool, blpapi3), Cint, (Ptr{Cvoid}, Cstring, Ptr{Cvoid}, Cint), element, nameString, name, value)
end

function blpapi_Element_setElementChar(element, nameString, name, value::Char)
    ccall((:blpapi_Element_setElementChar, blpapi3), Cint, (Ptr{Cvoid}, Cstring, Ptr{Cvoid}, Cchar), element, nameString, name, value)
end

function blpapi_Element_setElementInt32(element, nameString, name, value::Signed)
    ccall((:blpapi_Element_setElementInt32, blpapi3), Cint, (Ptr{Cvoid}, Cstring, Ptr{Cvoid}, Int32), element, nameString, name, value)
end

function blpapi_Element_setElementInt64(element, nameString, name, value::Signed)
    ccall((:blpapi_Element_setElementInt64, blpapi3), Cint, (Ptr{Cvoid}, Cstring, Ptr{Cvoid}, Clonglong), element, nameString, name, value)
end

function blpapi_Element_setElementFloat32(element, nameString, name, value::AbstractFloat)
    ccall((:blpapi_Element_setElementFloat32, blpapi3), Cint, (Ptr{Cvoid}, Cstring, Ptr{Cvoid}, Cfloat), element, nameString, name, value)
end

function blpapi_Element_setElementFloat64(element, nameString, name, value::AbstractFloat)
    ccall((:blpapi_Element_setElementFloat64, blpapi3), Cint, (Ptr{Cvoid}, Cstring, Ptr{Cvoid}, Cdouble), element, nameString, name, value)
end

function blpapi_Element_setElementString(element, nameString, name, value::String)
    ccall((:blpapi_Element_setElementString, blpapi3), Cint, (Ptr{Cvoid}, Cstring, Ptr{Cvoid}, Cstring), element, nameString, name, value)
end

function blpapi_Element_setElementDatetime(element, nameString, name, value::Ref{blpapi_Datetime})
    ccall((:blpapi_Element_setElementDatetime, blpapi3), Cint, (Ptr{Cvoid}, Cstring, Ptr{Cvoid}, Ref{blpapi_Datetime}), element, nameString, name, value)
end

function blpapi_Element_setElementHighPrecisionDatetime(element, nameString, name, value::Ref{blpapi_HighPrecisionDatetime})
    ccall((:blpapi_Element_setElementHighPrecisionDatetime, blpapi3), Cint, (Ptr{Cvoid}, Cstring, Ptr{Cvoid}, Ref{blpapi_HighPrecisionDatetime}), element, nameString, name, value)
end

function blpapi_Element_setElementFromField(element, nameString, name, sourcebuffer)
    ccall((:blpapi_Element_setElementFromField, blpapi3), Cint, (Ptr{Cvoid}, Cstring, Ptr{Cvoid}, Ptr{Cvoid}), element, nameString, name, sourcebuffer)
end

function blpapi_Element_setElementFromName(element, elementName, name, buffer)
    ccall((:blpapi_Element_setElementFromName, blpapi3), Cint, (Ptr{Cvoid}, Cstring, Ptr{Cvoid}, Ptr{Cvoid}), element, elementName, name, buffer)
end

function blpapi_Element_appendElement(element, appendedElement)
    @check ccall((:blpapi_Element_appendElement, blpapi3), Cint, (Ptr{Cvoid}, Ref{Ptr{Cvoid}}), element, appendedElement)
end

function blpapi_Element_setChoice(element, resultElement, nameCstr, name, index)
    ccall((:blpapi_Element_setChoice, blpapi3), Cint, (Ptr{Cvoid}, Ref{Ptr{Cvoid}}, Cstring, Ptr{Cvoid}, Csize_t), element, resultElement, nameCstr, name, Csize_t(index))
end

Element_name                            = blpapi_Element_name                           
Element_nameString                      = blpapi_Element_nameString                     
Element_definition                      = blpapi_Element_definition                     
Element_datatype                        = blpapi_Element_datatype                       
Element_isComplexType                   = blpapi_Element_isComplexType                  
Element_isArray                         = blpapi_Element_isArray                        
Element_isReadOnly                      = blpapi_Element_isReadOnly                     
Element_numValues                       = blpapi_Element_numValues                      
Element_numElements                     = blpapi_Element_numElements                    
Element_isNullValue                     = blpapi_Element_isNullValue                    
Element_isNull                          = blpapi_Element_isNull        
Element_print                           = blpapi_Element_print
Element_getElementAt                    = blpapi_Element_getElementAt                   
Element_getElement                      = blpapi_Element_getElement                     
Element_hasElement                      = blpapi_Element_hasElement                     
Element_hasElementEx                    = blpapi_Element_hasElementEx                   
Element_getValueAsBool                  = blpapi_Element_getValueAsBool                 
Element_getValueAsChar                  = blpapi_Element_getValueAsChar                 
Element_getValueAsInt32                 = blpapi_Element_getValueAsInt32                
Element_getValueAsInt64                 = blpapi_Element_getValueAsInt64                
Element_getValueAsFloat32               = blpapi_Element_getValueAsFloat32              
Element_getValueAsFloat64               = blpapi_Element_getValueAsFloat64              
Element_getValueAsString                = blpapi_Element_getValueAsString               
Element_getValueAsDatetime              = blpapi_Element_getValueAsDatetime             
Element_getValueAsHighPrecisionDatetime = blpapi_Element_getValueAsHighPrecisionDatetime
Element_getValueAsElement               = blpapi_Element_getValueAsElement              
Element_getValueAsName                  = blpapi_Element_getValueAsName                 
Element_getChoice                       = blpapi_Element_getChoice                      
Element_setValueBool                    = blpapi_Element_setValueBool                   
Element_setValueChar                    = blpapi_Element_setValueChar                   
Element_setValueInt32                   = blpapi_Element_setValueInt32                  
Element_setValueInt64                   = blpapi_Element_setValueInt64                  
Element_setValueFloat32                 = blpapi_Element_setValueFloat32                
Element_setValueFloat64                 = blpapi_Element_setValueFloat64                
Element_setValueString                  = blpapi_Element_setValueString                 
Element_setValueDatetime                = blpapi_Element_setValueDatetime               
Element_setValueHighPrecisionDatetime   = blpapi_Element_setValueHighPrecisionDatetime  
Element_setValueFromElement             = blpapi_Element_setValueFromElement            
Element_setValueFromName                = blpapi_Element_setValueFromName               
Element_setElementBool                  = blpapi_Element_setElementBool                 
Element_setElementChar                  = blpapi_Element_setElementChar                 
Element_setElementInt32                 = blpapi_Element_setElementInt32                
Element_setElementInt64                 = blpapi_Element_setElementInt64                
Element_setElementFloat32               = blpapi_Element_setElementFloat32              
Element_setElementFloat64               = blpapi_Element_setElementFloat64              
Element_setElementString                = blpapi_Element_setElementString               
Element_setElementDatetime              = blpapi_Element_setElementDatetime             
Element_setElementHighPrecisionDatetime = blpapi_Element_setElementHighPrecisionDatetime
Element_setElementFromField             = blpapi_Element_setElementFromField            
Element_setElementFromName              = blpapi_Element_setElementFromName             
Element_appendElement                   = blpapi_Element_appendElement                  
Element_setChoice                       = blpapi_Element_setChoice                      


export blpapi_Element_name                           ,
       blpapi_Element_nameString                     ,
       blpapi_Element_definition                     ,
       blpapi_Element_datatype                       ,
       blpapi_Element_isComplexType                  ,
       blpapi_Element_isArray                        ,
       blpapi_Element_isReadOnly                     ,
       blpapi_Element_numValues                      ,
       blpapi_Element_numElements                    ,
       blpapi_Element_isNullValue                    ,
       blpapi_Element_isNull                         ,
       blpapi_Element_print                          ,
       blpapi_Element_getElementAt                   ,
       blpapi_Element_getElement                     ,
       blpapi_Element_hasElement                     ,
       blpapi_Element_hasElementEx                   ,
       blpapi_Element_getValueAsBool                 ,
       blpapi_Element_getValueAsChar                 ,
       blpapi_Element_getValueAsInt32                ,
       blpapi_Element_getValueAsInt64                ,
       blpapi_Element_getValueAsFloat32              ,
       blpapi_Element_getValueAsFloat64              ,
       blpapi_Element_getValueAsString               ,
       blpapi_Element_getValueAsDatetime             ,
       blpapi_Element_getValueAsHighPrecisionDatetime,
       blpapi_Element_getValueAsElement              ,
       blpapi_Element_getValueAsName                 ,
       blpapi_Element_getChoice                      ,
       blpapi_Element_setValueBool                   ,
       blpapi_Element_setValueChar                   ,
       blpapi_Element_setValueInt32                  ,
       blpapi_Element_setValueInt64                  ,
       blpapi_Element_setValueFloat32                ,
       blpapi_Element_setValueFloat64                ,
       blpapi_Element_setValueString                 ,
       blpapi_Element_setValueDatetime               ,
       blpapi_Element_setValueHighPrecisionDatetime  ,
       blpapi_Element_setValueFromElement            ,
       blpapi_Element_setValueFromName               ,
       blpapi_Element_setElementBool                 ,
       blpapi_Element_setElementChar                 ,
       blpapi_Element_setElementInt32                ,
       blpapi_Element_setElementInt64                ,
       blpapi_Element_setElementFloat32              ,
       blpapi_Element_setElementFloat64              ,
       blpapi_Element_setElementString               ,
       blpapi_Element_setElementDatetime             ,
       blpapi_Element_setElementHighPrecisionDatetime,
       blpapi_Element_setElementFromField            ,
       blpapi_Element_setElementFromName             ,
       blpapi_Element_appendElement                  ,
       blpapi_Element_setChoice                      