Profile: PetPatient
Parent: Patient
Id: PetPatient
* ^url = $pet-patient-url
* ^status = #draft
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    MedicalRecordNumber 1..* and
    MicrochipNumber 0..1
* identifier[MedicalRecordNumber].type.coding.system 1..1
* identifier[MedicalRecordNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[MedicalRecordNumber].type.coding.code 1..1
* identifier[MedicalRecordNumber].type.coding.code = #MR (exactly)
* identifier[MedicalRecordNumber].type.coding.display 1..1
* identifier[MedicalRecordNumber].type.coding.display = "Medical record number" (exactly)
* identifier[MedicalRecordNumber].system 1..1
* identifier[MedicalRecordNumber].value 1..1
* identifier[MicrochipNumber].type.coding.system 1..1
* identifier[MicrochipNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[MicrochipNumber].type.coding.code 1..1
* identifier[MicrochipNumber].type.coding.code = #MCR (exactly)
* identifier[MicrochipNumber].type.coding.display 1..1
* identifier[MicrochipNumber].type.coding.display = "Microchip Number" (exactly)
* identifier[MicrochipNumber].system 1..1
* identifier[MicrochipNumber].value 1..1
* active 1..1
* name.text 1..1
* gender 1..1
* birthDate 1..1
* contact 1..1
* link 1..1
* link.other only Reference(PetOwnerRelatedPerson)
* contact.relationship 1..1
* contact.relationship.coding 1..1
* contact.relationship.coding from $pet-patient-contact-role-vs-url (required)
* contact.relationship.coding.system 1..1
* contact.relationship.coding.system = $snomed-ct-url (exactly)
* contact.relationship.coding.code 1..1
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 3
* extension contains $animal-specie-url named AnimalSpecie 1..1
* extension contains $animal-race-url named AnimalRace 1..1
* extension contains $animal-gender-status-url named AnimalGenderStatus 1..1
* extension[AnimalSpecie].url = $animal-specie-url (exactly)
* extension[AnimalRace].url = $animal-race-url (exactly)
* extension[AnimalGenderStatus].url = $animal-gender-status-url (exactly)
* extension[AnimalSpecie] ^isModifier = false
* extension[AnimalRace] ^isModifier = false
* extension[AnimalGenderStatus] ^isModifier = false
* obeys birth-date-under-right-format

Invariant:   birth-date-under-right-format
Description: "La fecha de nacimiento, solo debe representarse con el formato adecuado (YYYY-MM-DD solamente)."
Expression:  "birthDate.toString().matches('^[0-9]{4}-[0-9]{2}-[0-9]{2}$')"
Severity:    #error

// Restringir SPECIE + RAZA -> Función en APIGEE por ejemplo, ya que el Invariant no funciona bien con las Extension

/*Invariant: SpecieRaceRule
Description: "Selected Specie according to Race"
* severity = #error
* expression = "extension[AnimalSpecie].code = extension[AnimalRace].code"*/