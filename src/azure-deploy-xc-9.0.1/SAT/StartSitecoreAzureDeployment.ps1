#region Params
$SitecoreAzureToolkitFolder = "<README>\sitecore-install-starterkit\SAT"
$AzureSubscriptionId = "<README 1.2>"
$DeploymentId = "sxc901demo"
$Location = "Canada Central"
$AppInsightsLocation = "East US"
$ArmTemplateUrl = "https://<README>.blob.core.windows.net/sitecore-install-starterkit/ARMs/Sitecore%209.0.1/XP/azuredeploy.json"
$ParamFile = "<README>\sitecore-install-starterkit\SAT\azuredeploy.parameters.json"
$LicenseFile = "<README>\sitecore-install-starterkit\SAT\license.xml"
$certificateFilePath = "<README 3.3>"
$Parameters = @{
"deploymentId" = "$DeploymentId"; 
"applicationInsightsLocation" = "$AppInsightsLocation";
"authCertificateBlob" = [System.Convert]::ToBase64String([System.IO.File]::ReadAllBytes($certificateFilePath))}
Write-Host "Start Deployment Script Execution..."
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Unrestricted
cd $SitecoreAzureToolkitFolder
Write-Host "Setting Azure RM Context..."
Add-AzureRMAccount
Set-AzureRMContext $AzureSubscriptionId
Write-Verbose "Starting ARM deployment..."
Import-Module $SitecoreAzureToolkitFolder\tools\Sitecore.Cloud.Cmdlets.psm1
Start-SitecoreAzureDeployment -Name $DeploymentId -Location $Location -ArmTemplateUrl $ArmTemplateUrl -ArmParametersPath $ParamFile -LicenseXmlPath $LicenseFile -SetKeyValue $Parameters -Verbose
Write-Host "End Deployment Script Execution..."