/* ref: https://www.youtube.com/watch?v=AR5gNFodKlI&list=PLm0VCJgNxnpduY86JQVqd5wbiyd2xWe7e&index=3
        https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/file


resource storageaccount 'Microsoft.Storage/storageAccounts@2021-08-01' = {
  name: 'sampleromename'
  location: resourceGroup().location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}

*/

// https://www.youtube.com/watch?v=6EQ57JDgDuY&list=PLm0VCJgNxnpduY86JQVqd5wbiyd2xWe7e&index=4

// Azure Bicep March 2021: Learn everything about the next generation of ARM Templates
//https://www.youtube.com/watch?v=l85qv_1N2_A&t=433s

/*
@minLength(3)
@maxLength(24)
param name string
param sku_name string = 'Standard_LRS'
param allowBlobPublicAccess bool = false

@description('specialty min TLS version')
@allowed([
  'TLS1_1'
  'TLS1_2'
])
param minimumTlsVersion string = 'TLS1_2'

@allowed([
    'east asia'
    'southeast asia'
  ])
param location string

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-08-01' = {
  name: name
  location: location
  kind: 'StorageV2'
  sku: {
    name: sku_name
  }
  properties: {
    accessTier: 'Hot'
    allowBlobPublicAccess: allowBlobPublicAccess
    minimumTlsVersion: minimumTlsVersion
  }

}
*/

// az deployment group create --name test-deployment --resource-group deleteme --template-file  storage_accnt.bicep --parameters location='east asia' name='deletremestdemorg79'
// need to pass the parameter 'location' and 'name'

//  Azure Bicep Variables & Output | Learn Azure Bicep
// https://www.youtube.com/watch?v=F5OFOH1u2lE&list=PLm0VCJgNxnpduY86JQVqd5wbiyd2xWe7e&index=5

@minLength(3)
@maxLength(24)
param name string
param sku_name string = 'Standard_LRS'
param allowBlobPublicAccess bool = false

@description('specialty min TLS version')
@allowed([
  'TLS1_1'
  'TLS1_2'
])
param minimumTlsVersion string = 'TLS1_2'

@allowed([
    'east asia'
    'southeast asia'
  ])
param location string

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-08-01' = {
  name: name
  location: location
  kind: 'StorageV2'
  sku: {
    name: sku_name
  }
  properties: {
    accessTier: 'Hot'
    allowBlobPublicAccess: allowBlobPublicAccess
    minimumTlsVersion: minimumTlsVersion
  }

}
