@description('Specifies the name of the Azure Storage account.')
param storageAccountName array = [
  'benjtaketa'
  'colinsiew'
  'commonshare'
  'compdata'
  'compliance'
  'compirkyc'
  'daisuke'
  'enfusion'
  'home'
  'interim'
  'itfolder'
  'jaxkhor'
  'naokoarai'
  'opsprivate'
  'shared'
  'tomofumi'
  'torasftp'
  'zilingzeng'
]


@description('Specifies the location in which the Azure Storage resources should be deployed.')
param location string = resourceGroup().location

resource sa 'Microsoft.Storage/storageAccounts@2021-04-01' = [for name in storageAccountName: {
  name: '${name}${uniqueString(resourceGroup().id)}'
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}]


