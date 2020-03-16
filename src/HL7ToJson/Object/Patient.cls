Class HL7ToJson.Object.Patient Extends %SerialObject
{

Property FirstName As %String;

Property LastName As %String;

Storage Default
{
<Data name="PatientState">
<Value name="1">
<Value>FirstName</Value>
</Value>
<Value name="2">
<Value>LastName</Value>
</Value>
</Data>
<State>PatientState</State>
<StreamLocation>^HL7ToJson.Object.PatientS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
