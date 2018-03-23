$SitecoreAzureToolkitFolder = "C:\Data\CreativeLab\sitecore-install-starterkit\SAT"
$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile("https://dev.sitecore.net/~/media/BA700A4ED1344F06B03105DC3C7718A4.ashx","C:\Data\CreativeLab\sitecore-install-starterkit\WDPs")