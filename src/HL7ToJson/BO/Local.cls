Class HL7ToJson.BO.Local Extends Ens.BusinessOperation
{

Parameter INVOCATION = "Queue";

Method Save(pInput As HL7ToJson.Msg.PatientRequest, pOutput As Ens.Request)
{

    Set tPatient = ##class(HL7ToJson.Table.Patient).%New(pInput)
    $$$ThrowOnError(tPatient.%Save())

    Quit $$$OK
}

XData MessageMap
{
<MapItems>
  <MapItem MessageType="HL7ToJson.Msg.PatientRequest">
    <Method>Save</Method>
  </MapItem>
</MapItems>
}

}
