<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Deactivated_Employee</fullName>
        <description>Deactivated Employee</description>
        <protected>false</protected>
        <recipients>
            <recipient>prerna.tiwary@eternussolutions.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SupportCaseAssignmentNotification</template>
    </alerts>
    <alerts>
        <fullName>Deactivated_Employee1</fullName>
        <description>Deactivated Employee1</description>
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
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts>
    <fieldUpdates>
        <fullName>Non_Technical</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Non_Technical_Employees</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Non Technical</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Unique</fullName>
        <field>Role_Lookup_Id__c</field>
        <formula>Role__r.Name</formula>
        <name>Unique</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Non Technical</fullName>
        <actions>
            <name>Non_Technical</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Employee__c.Current_Employee__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>Set record type to non technical</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Rule 1</fullName>
        <actions>
            <name>Deactivated_Employee1</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1</booleanFilter>
        <criteriaItems>
            <field>Employee__c.Is_Active__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>The employee is not active</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Temp</fullName>
        <actions>
            <name>Deactivated_Employee</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <booleanFilter>1</booleanFilter>
        <criteriaItems>
            <field>Employee__c.Is_Active__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Unique Value</fullName>
        <actions>
            <name>Unique</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>TRUE</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>rte</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Employee__c.Last_name__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>