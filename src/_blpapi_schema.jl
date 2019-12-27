function blpapi_SchemaElementDefinition_name(field)
    ccall((:blpapi_SchemaElementDefinition_name,blpapi3),Ptr{Cvoid},(Ptr{Cvoid},),field)
end

function blpapi_SchemaElementDefinition_description(field)
    unsafe_string(ccall((:blpapi_SchemaElementDefinition_description,blpapi3),Cstring,(Ptr{Cvoid},),field))
end

function blpapi_SchemaElementDefinition_status(field)
    ccall((:blpapi_SchemaElementDefinition_status, blpapi3), Cint, (Ptr{Cvoid},), field)
end

function blpapi_SchemaElementDefinition_type(field)
    ccall((:blpapi_SchemaElementDefinition_type, blpapi3), Ptr{Cvoid},(Ptr{Cvoid},), field)
end

function blpapi_SchemaElementDefinition_minValues(field)
    ccall((:blpapi_SchemaElementDefinition_minValues, blpapi3), Cint, (Ptr{Cvoid},), field)
end

function blpapi_SchemaElementDefinition_maxValues(field)
    ccall((:blpapi_SchemaElementDefinition_maxValues, blpapi3), Cint, (Ptr{Cvoid},), field)
end

function blpapi_SchemaTypeDefinition_name(Type)
    ccall((:blpapi_SchemaTypeDefinition_name, blpapi3), Ptr{Cvoid}, (Ptr{Cvoid},), Type)
end

function blpapi_SchemaTypeDefinition_description(Type)
    ccall((:blpapi_SchemaTypeDefinition_description, blpapi3), Cstring, (Ptr{Cvoid},), Type)
end

function blpapi_SchemaTypeDefinition_status(Type)
    ccall((:blpapi_SchemaTypeDefinition_status, blpapi3), Cint, (Ptr{Cvoid},), Type)
end

function blpapi_SchemaTypeDefinition_datatype(Type)
    ccall((:blpapi_SchemaTypeDefinition_datatype, blpapi3), Cint, (Ptr{Cvoid},), Type)
end

function blpapi_SchemaTypeDefinition_isComplexType(Type)
    ccall((:blpapi_SchemaTypeDefinition_isComplexType, blpapi3), Cint, (Ptr{Cvoid},), Type)
end

function blpapi_SchemaTypeDefinition_isSimpleType(Type)
    ccall((:blpapi_SchemaTypeDefinition_isSimpleType, blpapi3), Cint, (Ptr{Cvoid},), Type)
end

function blpapi_SchemaTypeDefinition_isEnumerationType(Type)
    ccall((:blpapi_SchemaTypeDefinition_isEnumerationType, blpapi3), Cint, (Ptr{Cvoid},), Type)
end

function blpapi_SchemaTypeDefinition_isComplex(Type)
    ccall((:blpapi_SchemaTypeDefinition_isComplex, blpapi3), Cint, (Ptr{Cvoid},), Type)
end

function blpapi_SchemaTypeDefinition_isSimple(Type)
    ccall((:blpapi_SchemaTypeDefinition_isSimple, blpapi3), Cint, (Ptr{Cvoid},), Type)
end

function blpapi_SchemaTypeDefinition_isEnumeration(Type)
    ccall((:blpapi_SchemaTypeDefinition_isEnumeration, blpapi3), Cint, (Ptr{Cvoid},), Type)
end

function blpapi_SchemaTypeDefinition_numElementDefinitions(Type)
    ccall((:blpapi_SchemaTypeDefinition_numElementDefinitions, blpapi3), Cint, (Ptr{Cvoid},), Type)
end

function blpapi_SchemaTypeDefinition_getElementDefinition(Type, nameString, name)
    ccall((:blpapi_SchemaTypeDefinition_getElementDefinition, blpapi3), Ptr{Cvoid}, (Ptr{Cvoid}, Cstring, Ptr{Cvoid}), Type, nameString, name)
end

function blpapi_SchemaTypeDefinition_getElementDefinitionAt(Type, index)
    ccall((:blpapi_SchemaTypeDefinition_getElementDefinitionAt, blpapi3), Ptr{Cvoid}, (Ptr{Cvoid}, Cint), Type, Cint(index))
end


SchemaElementDefinition_name                = blpapi_SchemaElementDefinition_name
SchemaElementDefinition_description         = blpapi_SchemaElementDefinition_description
SchemaElementDefinition_status              = blpapi_SchemaElementDefinition_status
SchemaElementDefinition_type                = blpapi_SchemaElementDefinition_type
SchemaElementDefinition_minValues           = blpapi_SchemaElementDefinition_minValues
SchemaElementDefinition_maxValues           = blpapi_SchemaElementDefinition_maxValues
SchemaTypeDefinition_name                   = blpapi_SchemaTypeDefinition_name
SchemaTypeDefinition_description            = blpapi_SchemaTypeDefinition_description
SchemaTypeDefinition_status                 = blpapi_SchemaTypeDefinition_status
SchemaTypeDefinition_datatype               = blpapi_SchemaTypeDefinition_datatype
SchemaTypeDefinition_isComplexType          = blpapi_SchemaTypeDefinition_isComplexType
SchemaTypeDefinition_isSimpleType           = blpapi_SchemaTypeDefinition_isSimpleType
SchemaTypeDefinition_isEnumerationType      = blpapi_SchemaTypeDefinition_isEnumerationType
SchemaTypeDefinition_isComplex              = blpapi_SchemaTypeDefinition_isComplex
SchemaTypeDefinition_isSimple               = blpapi_SchemaTypeDefinition_isSimple
SchemaTypeDefinition_isEnumeration          = blpapi_SchemaTypeDefinition_isEnumeration
SchemaTypeDefinition_numElementDefinitions  = blpapi_SchemaTypeDefinition_numElementDefinitions
SchemaTypeDefinition_getElementDefinition   = blpapi_SchemaTypeDefinition_getElementDefinition
SchemaTypeDefinition_getElementDefinitionAt = blpapi_SchemaTypeDefinition_getElementDefinitionAt

export blpapi_SchemaElementDefinition_name                ,
       blpapi_SchemaElementDefinition_description         ,
       blpapi_SchemaElementDefinition_status              ,
       blpapi_SchemaElementDefinition_type                ,
       blpapi_SchemaElementDefinition_minValues           ,
       blpapi_SchemaElementDefinition_maxValues           ,
       blpapi_SchemaTypeDefinition_name                   ,
       blpapi_SchemaTypeDefinition_description            ,
       blpapi_SchemaTypeDefinition_status                 ,
       blpapi_SchemaTypeDefinition_datatype               ,
       blpapi_SchemaTypeDefinition_isComplexType          ,
       blpapi_SchemaTypeDefinition_isSimpleType           ,
       blpapi_SchemaTypeDefinition_isEnumerationType      ,
       blpapi_SchemaTypeDefinition_isComplex              ,
       blpapi_SchemaTypeDefinition_isSimple               ,
       blpapi_SchemaTypeDefinition_isEnumeration          ,
       blpapi_SchemaTypeDefinition_numElementDefinitions  ,
       blpapi_SchemaTypeDefinition_getElementDefinition   ,
       blpapi_SchemaTypeDefinition_getElementDefinitionAt