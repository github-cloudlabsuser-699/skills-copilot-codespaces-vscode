# Connect to Azure
Connect-AzAccount

# Set variables
$resourceGroupName = "YourResourceGroupName"
$storageAccountName = "YourStorageAccountName"
$location = "YourLocation"
$sku = "Standard_LRS"

# Create a new resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create a new storage account
New-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccountName -Location $location -SkuName $sku

# Output the connection string for the storage account
$storageAccount = Get-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccountName
$connectionString = $storageAccount.Context.ConnectionString
Write-Output "Storage account created successfully. Connection string: $connectionString"