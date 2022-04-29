

resource storage2'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'newr0m3sta09723459'
  location: resourceGroup().location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  properties:{
    supportsHttpsTrafficOnly:true
  }
}
