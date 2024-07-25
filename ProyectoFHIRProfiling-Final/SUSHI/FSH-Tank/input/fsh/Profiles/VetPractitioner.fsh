Profile: VetPractitioner
Parent: Practitioner
Id: VetPractitioner

* ^url = $vet-practitioner-profile-url
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
* identifier.type.coding.code = #PN
* identifier.type.coding.display 1..1
* identifier.type.coding.display = "Person Number" (exactly)
* identifier.type.coding.userSelected 0..0
* identifier.type.text 0..0
* identifier.system 0..0
* identifier.value 1..1
* identifier.period 0..0
* identifier.assigner 0..0
* name 1..1
* name.use 1..1
* name.text 1..1
* name.family 1..1
* name.given 1..1
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
* qualification 1..*
* qualification ^slicing.discriminator.type = #value
* qualification ^slicing.discriminator.path = "id"
* qualification ^slicing.rules = #open
* qualification contains
    VetProffesional 1..1
* qualification[VetProffesional].id 1..1
* qualification[VetProffesional].id = "VetProffesional" (exactly)
* qualification[VetProffesional].period 1..1
* qualification[VetProffesional].period.start 1..1
* qualification[VetProffesional].code = $snomed-ct-url#106290006
* qualification[VetProffesional].identifier.type.coding ^slicing.discriminator.type = #value
* qualification[VetProffesional].identifier.type.coding ^slicing.discriminator.path = "system"
* qualification[VetProffesional].identifier.type.coding ^slicing.rules = #open
* qualification[VetProffesional].identifier.type.coding contains
    VetProffesionalLicenseNumber 1..1
* qualification[VetProffesional].identifier.type.coding[VetProffesionalLicenseNumber].system 1..1
* qualification[VetProffesional].identifier.type.coding[VetProffesionalLicenseNumber].system = $identification-person-identifier-url (exactly)
* qualification[VetProffesional].identifier.type.coding[VetProffesionalLicenseNumber].code 1..1
* qualification[VetProffesional].identifier.type.coding[VetProffesionalLicenseNumber].code = #LN (exactly)
* qualification[VetProffesional].identifier.type.coding[VetProffesionalLicenseNumber].display 1..1
* qualification[VetProffesional].identifier.type.coding[VetProffesionalLicenseNumber].display = "License number" (exactly)
