Class HL7ToJson.BO.REST Extends Ens.BusinessOperation
{

Parameter INVOCATION = "Queue";

Method Save(pInput As HL7ToJson.Msg.PatientRequest, pOutput As Ens.Request)
{
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
