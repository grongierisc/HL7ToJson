Class HL7ToJson.Production Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="HL7ToJson.Production" TestingEnabled="true" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="MsgRouter" Category="" ClassName="EnsLib.HL7.MsgRouter.RoutingEngine" PoolSize="1" Enabled="true" Foreground="false" Comment="Cela permet de gérer la logique de routage." LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="Validation"></Setting>
    <Setting Target="Host" Name="BusinessRuleName">HL7ToJson.Production.RoutingRule</Setting>
    <Setting Target="Host" Name="BadMessageHandler">BadMessageHandler</Setting>
  </Item>
  <Item Name="BadMessageHandler" Category="" ClassName="EnsLib.HL7.Operation.FileOperation" PoolSize="1" Enabled="false" Foreground="false" Comment="Bad messages are sent to this operation." LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="Ens.Alert" Category="" ClassName="EnsLib.MsgRouter.RoutingEngine" PoolSize="0" Enabled="true" Foreground="false" Comment="This handles Alert routing logic." LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="BusinessRuleName">HL7ToJson.Production.AlertRule</Setting>
  </Item>
  <Item Name="EMailAlert" Category="" ClassName="EnsLib.EMail.AlertOperation" PoolSize="1" Enabled="false" Foreground="false" Comment="This sends alerts via e-mail." LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="PagerAlert" Category="" ClassName="EnsLib.EMail.AlertOperation" PoolSize="1" Enabled="false" Foreground="false" Comment="This sends alerts to a pager via e-mail." LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="HL7FileService" Category="" ClassName="EnsLib.HL7.Service.FileService" PoolSize="1" Enabled="true" Foreground="false" Comment="This is a default HL7 File Service." LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="TargetConfigNames">MsgRouter</Setting>
  </Item>
  <Item Name="HL7FileOperation" Category="" ClassName="EnsLib.HL7.Operation.FileOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="This is a default HL7 File Operation." LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="HL7ToJson.BO.JDBC" Category="" ClassName="HL7ToJson.BO.JDBC" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="DSN">jdbc:postgresql://db/iam</Setting>
    <Setting Target="Adapter" Name="JDBCClasspath">/tmp/db/postgresql-42.2.11.jar</Setting>
    <Setting Target="Adapter" Name="JDBCDriver">org.postgresql.Driver</Setting>
    <Setting Target="Adapter" Name="Credentials">iam</Setting>
    <Setting Target="Adapter" Name="JGService">EnsLib.JavaGateway.Service</Setting>
  </Item>
  <Item Name="HL7ToJson.BO.Local" Category="" ClassName="HL7ToJson.BO.Local" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="HL7ToJson.BO.REST" Category="" ClassName="HL7ToJson.BO.REST" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="HTTPServer">localhost</Setting>
    <Setting Target="Adapter" Name="URL">/api/patient</Setting>
  </Item>
  <Item Name="EnsLib.JavaGateway.Service" Category="" ClassName="EnsLib.JavaGateway.Service" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
</Production>
}

}
