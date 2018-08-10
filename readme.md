THIS IS A CODE SAMPLE FOR DEMONSTRATION PURPOSES ONLY
-- DOCUMENTATION AND SAMPLE ARE A WORK IN PROGRESS TO SHARE THIS FRAMEWORK --

Background:
This sample should serve as a framework for Identity and Access Management automated procedures. This configuration
is intended to demonstrate Self-Service capabilities for Non-IT Users. 

Purpose:
- Update User's Department
- Reset User's Password (Key Scenario)
	Background: This sample allows a users peer to submit a request for a password update. Prior to updating
	password, the users manager must be notified and approve the request. 
s
Pre-Reqs

*Basic knowledge of SharePoint, Flow & Azure Automation
1.) Azure Automation Account
	- You must install the AzureAD Module within your Azure Automation Account
	- Sample uses the credential variable M365Admin. Please create an M365Admin credential variable, and populate with an Azure AD Administrator credentials. 

2.) Microsoft 365 Tenant
	- Create a SharePoint Site. Within SharePoint Site, create a list.
		- List fields:
			- UserPrincipalName
			- JobComplete
			- NewPassword

Setup:
1. Satisfy Pre-Reqs
2. Create Azure Automation PowerShell Run Books based on Code Samples.
3. Create Flow
