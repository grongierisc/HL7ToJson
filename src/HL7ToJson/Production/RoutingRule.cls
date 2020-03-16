/// 
Class HL7ToJson.Production.RoutingRule Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.HL7.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.HL7.MsgRouter.RoutingEngine" production="HL7ToJson.Production">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="">
<constraint name="source" value="HL7FileService"></constraint>
<when condition="1">
<send transform="HL7ToJson.DT.HL7PIDToJSON" target="HL7ToJson.BO.JDBC"></send>
<send transform="HL7ToJson.DT.HL7PIDToJSON" target="HL7ToJson.BO.Local"></send>
<send transform="HL7ToJson.DT.HL7PIDToJSON" target="HL7ToJson.BO.REST"></send>
<send transform="" target="HL7FileOperation"></send>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
