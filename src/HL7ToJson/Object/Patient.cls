Class HL7ToJson.Object.Patient Extends %SerialObject
{

Property FristName As %String;

Property LastName As %String;

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
<Data name="PatientState">
<Value name="1">
<Value>FristName</Value>
</Value>
<Value name="2">
<Value>LastName</Value>
</Value>
</Data>
<DataLocation>^HL7ToJson.Object.PatientD</DataLocation>
<DefaultData>PatientDefaultData</DefaultData>
<IdLocation>^HL7ToJson.Object.PatientD</IdLocation>
<IndexLocation>^HL7ToJson.Object.PatientI</IndexLocation>
<State>PatientState</State>
<StreamLocation>^HL7ToJson.Object.PatientS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
