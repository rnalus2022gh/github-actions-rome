resource storageAccount 'Microsoft.Storage/storageAccounts@2021-08-01' = {
  name: 'toylaunchst0rag3'
  location: 'eastasia'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}

resource appServicePlan 'Microsoft.Web/serverfarms@2021-03-01' = {
  name: 'toy-product-launch-plan'
  location: 'eastasia'
  sku: {
    name: 'F1'
  }
}

resource appServiceApp 'Microsoft.Web/sites@2021-03-01' = {
  name: 'toy-product-launch-1'
  location: 'eastasia'
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
}

