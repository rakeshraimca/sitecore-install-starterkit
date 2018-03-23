      _____ _ _                           _____                                            
     / ____(_) |                         / ____|                                           
    | (___  _| |_ ___  ___ ___  _ __ ___| |     ___  _ __ ___  _ __ ___   ___ _ __ ___ ___ 
     \___ \| | __/ _ \/ __/ _ \| '__/ _ \ |    / _ \| '_ ` _ \| '_ ` _ \ / _ \ '__/ __/ _ \
     ____) | | ||  __/ (_| (_) | | |  __/ |___| (_) | | | | | | | | | | |  __/ | | (_|  __/
    |_____/|_|\__\___|\___\___/|_|  \___|\_____\___/|_| |_| |_|_| |_| |_|\___|_|  \___\___|                                                                                    
   

#Sitecore install Starterkit
This is a set of all required files to deploy Sitecore Commerce 9.0 Update 1 (On Premises or Azure)
 
#Before starting
This will not replace the official Sitecore Documentation. 
Make sure you already read and undrestand Installation Guide (On Premises or Azure App Service) and DevOps Guide
https://doc.sitecore.net/sitecore_commerce/

#Content 
This package contains, all what you need to start deploying Sitecore Commerce :
- azure-deploy-xc-9.0.1 (To provision and deploy Sitecore Experiece Commerce on
- install-xc-9.0.1 (To install Sitecore Experience Commerce Locally) - @TODO
 
## For azure-deploy-xc-9.0.1
- Sitecore Azure Toolkit 2.0.2 (https://dev.sitecore.net/Downloads/Sitecore_Azure_Toolkit/2x/Sitecore_Azure_Toolkit_202.aspx)
- All required Web deploy packages for Sitecore Experience Platform 9.0 update 1 (+ SXA 1.6 and SPE 4.7.2 for Sitecore 8/9)
- All required Web deploy packages for Sitecore Experience Commerce 9.0 update 1

#How to use azure-deploy-xc-9.0.1
1. Get prepared 
	1.1 Make sure you have an Active Azure Account
	1.2 Take a note of service availability in your region. Note that MSDN account has some restrictions and not all services are available.	
		Subscription ID : [Note yours]
	1.3 Setup Azure storage, and create your Storage Access Token (https://docs.microsoft.com/en-us/azure/storage/common/storage-quickstart-create-account?tabs=powershell)
		SAS Token : [Note yours]
	1.4 Create a Braintree sandbox account (for payment functionality).
	 Sandbox  : https://sandbox.braintreegateway.com/
	 Username : [Note yours]
	 Password : [Note yours]	 
	 Merchant ID	:  	[Note yours]
	 Public Key		:  	[Note yours]
	 Private Key	: 	[Note yours]
	 
2. Download "src\azure-deploy-xc-9.0.1" folder

3. Copy your certificate file into  
3.1 If you need to use Development Certificate, Open "src\azure-deploy-xc-9.0.1/SAT/New-DevelopmentCertificate.ps1"
3.2 Update value of $certificateDnsName, $certificatePassword, $certificateFriendlyName; and execute
3.3 Note your certificate file path and passshare

4. Upload ARMs and WDPs into your Storage Blob Container  

5. Open \src\azure-deploy-xc-9.0.1\SAT\azuredeploy.parameters.json and update all paths

6. Open \src\azure-deploy-xc-9.0.1\SAT\StartSitecoreAzureDeployment.ps1 and update all parameters
	 	 
7. Execute the script StartSitecoreAzureDeployment.ps1 (Will ask you to connect to your Azure Account)												   
