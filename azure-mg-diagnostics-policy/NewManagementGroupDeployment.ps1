$location = 'LOCATION'
$mg = 'MANAGEMENT_GROUP'
$TemplateFile = "AzureDeploy.json"
$Today = Get-Date -Format "MM-dd-yyyy"
$DeploymentName = "deploymentscript-" + "$Today"
New-AzManagementGroupDeployment `
  -Name $DeploymentName `
  -location $location `
  -ManagementGroupId $mg `
  -TemplateFile $TemplateFile
  