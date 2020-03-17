Class HL7ToJson.Msg.PatientRequest Extends (Ens.Request, HL7ToJson.Object.Patient, %JSON.Adaptor)
{

Storage Default
{
<Data name="PatientRequestDefaultData">
<Subscript>"PatientRequest"</Subscript>
<Value name="1">
<Value>FristName</Value>
</Value>
<Value name="2">
<Value>LastName</Value>
</Value>
<Value name="3">
<Value>FirstName</Value>
</Value>
</Data>
<DefaultData>PatientRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
