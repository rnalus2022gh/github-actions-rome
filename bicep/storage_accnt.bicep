resource storageaccount 'Microsoft.Storage/storageAccounts@2021-08-01' = {
  name: 'sampleromename'
  location: resourceGroup().location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}
