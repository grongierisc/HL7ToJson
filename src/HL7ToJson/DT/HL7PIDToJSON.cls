Class HL7ToJson.DT.HL7PIDToJSON Extends Ens.DataTransformDTL [ DependsOn = (EnsLib.HL7.Message, HL7ToJson.Msg.PatientRequest) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EnsLib.HL7.Message' targetClass='HL7ToJson.Msg.PatientRequest' sourceDocType='2.5.1:ADT_A01' create='new' language='objectscript' >
<assign value='source.{PID:PatientName().GivenName}' property='target.FirstName' action='set' />
<assign value='source.{PID:PatientName().FamilyName.Surname}' property='target.LastName' action='set' />
</transform>
}

}
