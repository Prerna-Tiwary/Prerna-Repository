<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Approval_Email</fullName>
        <description>Approval Email</description>
        <protected>false</protected>
        <recipients>
            <recipient>prerna.tiwary19@eternussolutions.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>prerna.tiwary@eternussolutions.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts>
    <alerts>
        <fullName>Approval_Email1</fullName>
        <description>Approval Email1</description>
        <protected>false</protected>
        <recipients>
            <recipient>prerna.tiwary19@eternussolutions.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>prerna.tiwary@eternussolutions.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts>
    <alerts>
        <fullName>Big_Deal_Alert</fullName>
        <description>Big Deal Alert</description>
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
    <alerts>
        <fullName>Deactivated_Employee</fullName>
        <description>Deactivated Employee</description>
        <protected>false</protected>
        <recipients>
            <recipient>prerna.tiwary1@eternussoluions.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/MarketingProductInquiryResponse</template>
    </alerts>
    <rules>
        <fullName>Big Deal Alert</fullName>
        <actions>
            <name>Big_Deal_Alert</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <booleanFilter>1</booleanFilter>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterThan</operation>
            <value>50000</value>
        </criteriaItems>
        <description>Big Deal Alert</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
