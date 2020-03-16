Class HL7ToJson.DT.HL7PIDToJSON Extends Ens.DataTransformDTL [ DependsOn = (EnsLib.HL7.Message, HL7ToJson.Object.Patient) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EnsLib.HL7.Message' targetClass='HL7ToJson.Object.Patient' sourceDocType='2.5:ADT_A01' create='new' language='objectscript' >
<assign value='source.{PD1:PatientPrimaryCareProviderNa().GivenName}' property='target.LastName' action='set' />
<assign value='source.{PD1:PatientPrimaryCareProviderNa().FamilyName.Surname}' property='target.FristName' action='set' />
</transform>
}

}
