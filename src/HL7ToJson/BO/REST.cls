Class HL7ToJson.BO.REST Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.HTTP.OutboundAdapter";

Property Adapter As EnsLib.HTTP.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method Save(pInput As HL7ToJson.Msg.PatientRequest, pOutput As Ens.Request)
{

    set sc = pInput.%JSONExportToString(.json)

    $$$LOGINFO(json)
    
    $$$ThrowOnError(..Adapter.Post(.response,,json))
    
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
