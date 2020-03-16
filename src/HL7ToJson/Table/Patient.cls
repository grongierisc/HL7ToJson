Class HL7ToJson.Table.Patient Extends (%Persistent, HL7ToJson.Object.Patient, Form.Adaptor)
{

/// Form name, not a global key so it can be anything
/// Set to empty string (like here) to not have a class as a form 
Parameter FORMNAME = "Person";

/// Default permissions
/// Objects of this form can be Created, Read, Updated and Deleted
/// Redefine this parameter to change permissions for everyone
/// Redefine checkPermission method (see Form.Security) for this class
/// to add custom security based on user/roles/etc.
Parameter OBJPERMISSIONS As %String = "CRUD";

/// Property used for basic information about the object
/// By default getObjectDisplayName method gets its value from it
Parameter DISPLAYPROPERTY As %String = "FirstName";

Method %OnNew(patient As HL7ToJson.Object.Patient) As %Status
{
    set $this.FirstName = patient.FirstName
    set $this.LastName = patient.LastName
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
<Value name="4">
<Value>FirstName</Value>
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
