Class HL7ToJson.Table.Patient Extends (%Persistent, HL7ToJson.Object.Patient, Form.Adaptor)
{

Method %OnNew(patient As HL7ToJson.Object.Patient) As %Status
{
    set $this = patient
    Quit $$$OK
}

Storage Default
{
<Data name="PatientDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>FristName</Value>
</Value>
<Value name="3">
<Value>LastName</Value>
</Value>
</Data>
<DataLocation>^HL7ToJson.Table.PatientD</DataLocation>
<DefaultData>PatientDefaultData</DefaultData>
<IdLocation>^HL7ToJson.Table.PatientD</IdLocation>
<IndexLocation>^HL7ToJson.Table.PatientI</IndexLocation>
<StreamLocation>^HL7ToJson.Table.PatientS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
