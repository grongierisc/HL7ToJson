Class HL7ToJson.BO.JDBC Extends Ens.BusinessOperation
{

Parameter INVOCATION = "Queue";

Parameter ADAPTER = "EnsLib.SQL.OutboundAdapter";

Property Adapter As EnsLib.SQL.OutboundAdapter;

Method Save(pInput As HL7ToJson.Msg.PatientRequest, pOutput As Ens.Request)
{
    set sql = "insert into public.patient values (?,?)"
    $$$ThrowOnError(..Adapter.ExecuteUpdate(.tResult,sql, pInput.FirstName,pInput.LastName))
			
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
