<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Follow_Up</fullName>
        <description>Follow Up</description>
        <protected>false</protected>
        <recipients>
            <recipient>prerna.tiwary1@eternussoluions.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>prerna.tiwary@eternussolutions.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SupportEscalatedCaseNotification</template>
    </alerts>
    <fieldUpdates>
        <fullName>DNC1</fullName>
        <field>RecordTypeId</field>
        <lookupValue>DNC1</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>DNC1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LANDLINE</fullName>
        <description>LANDLINE</description>
        <field>LANDLINE__c</field>
        <name>LANDLINE</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Landline1</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Landline1</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Landline1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Mobile1</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Mobile1</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Mobile1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>No_Number1</fullName>
        <field>RecordTypeId</field>
        <lookupValue>No_Number1</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>No Number1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Follow Up</fullName>
        <actions>
            <name>Follow_Up</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Follow Up</description>
        <formula>Follow_Up__c  &gt;  TODAY()</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Rule 5</fullName>
        <active>true</active>
        <description>Mobile Call</description>
        <formula>IF ( NOT ( ISBLANK ( MobilePhone )), 
AND ( DoNotCall == FALSE , ISBLANK( Phone ) ) , 

FALSE 

)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Rule 6</fullName>
        <actions>
            <name>Landline1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Landline</description>
        <formula>AND( DoNotCall == FALSE, ISBLANK( MobilePhone ) , NOT(ISBLANK( Phone )))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Rule 8</fullName>
        <active>true</active>
        <description>NO number</description>
        <formula>AND( ISBLANK( MobilePhone ) , ISBLANK( LANDLINE__c ) , DoNotCall =FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Rule 9</fullName>
        <actions>
            <name>DNC1</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>DO NOT CALL</description>
        <formula>DoNotCall == TRUE</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
