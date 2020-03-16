Class HL7ToJson.BO.REST Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.HTTP.OutboundAdapter";

Property Adapter As EnsLib.HTTP.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method Save(pInput As HL7ToJson.Msg.PatientRequest, pOutput As Ens.Request)
{
    set body = {}
    set body.firstname = pInput.FirstName
    set body.lastname = pInput.LastName

    $$$LOGINFO(body.%ToJSON())
    
    $$$ThrowOnError(..Adapter.Post(.response,,body.%ToJSON()))
    
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
