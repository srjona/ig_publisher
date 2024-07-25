Profile: PetOwnerRelatedPerson
Parent: RelatedPerson
Id: PetOwnerRelatedPerson

* ^url = $pet-owner-related-person-profile-url
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
* relationship 1..1
* relationship.coding ^slicing.discriminator.type = #value
* relationship.coding ^slicing.discriminator.path = "system"
* relationship.coding ^slicing.rules = #open
* relationship.coding contains
    PetOwnership 1..1
* relationship.coding[PetOwnership].system 1..1
* relationship.coding[PetOwnership].system = $snomed-ct-url (exactly)
* relationship.coding[PetOwnership].code 1..1
* relationship.coding[PetOwnership].code = #224150009 (exactly)
* relationship.coding[PetOwnership].display 1..1
* relationship.coding[PetOwnership].display = "Pet ownership" (exactly)
* name 1..1
* name.use 0..0
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
* patient 1..1
* patient.reference 1..1
* patient only Reference($pet-patient-url)
