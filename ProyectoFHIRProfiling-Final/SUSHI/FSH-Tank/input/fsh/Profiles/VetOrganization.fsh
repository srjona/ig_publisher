Profile: VetOrganization
Parent: Organization
Id: VetOrganization

* ^url = $vet-organization-url
* ^status = #draft
* ^contact.telecom.system = #phone

* identifier 1..1
* identifier.use 1..1
* identifier.type 1..1
* identifier.type.coding.system 1..1
* identifier.type.coding.system = $identification-person-identifier-url (exactly)
* identifier.type.coding.system ^label = "Terminología"
* identifier.type.coding.version 0..0
* identifier.type.coding.code 1..1
* identifier.type.coding.code = #TAX
* identifier.type.coding.display 1..1
* identifier.type.coding.display = "Tax ID number" (exactly)
* identifier.type.coding.userSelected 0..0
* identifier.type.text 0..0
* identifier.system 0..0
* identifier.value 1..1
* identifier.period 0..0
* identifier.assigner 0..0
* name 1..1
* telecom 1..*
* telecom.system 1..1
* telecom.system = #phone
* telecom.value 1..1
* telecom.use 0..1
* address 1..1
* address.use 1..1
* address.type 0..0
* address.text 1..1
* address.city 1..1
* address.postalCode 1..1
* address.country 1..1
* address.state 1..1
* type 1..1
* type.coding 1..*
* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "system"
* type.coding ^slicing.rules = #open
* type.coding contains
    VetOrganization 1..1
* type.coding[VetOrganization].system 1..1
* type.coding[VetOrganization].system = $vet-organization-cs-url (exactly)
* type.coding[VetOrganization].code 1..1
* type.coding[VetOrganization].display 1..1
* contact 0..0