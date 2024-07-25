Instance: 64765015-97b9-4391-bab2-c6b821527adc
InstanceOf: PetPatient
Usage: #example
* identifier[0].type = $identification-person-identifier-url#MR "Medical record number"
* identifier[=].system = "http://MyVet.example.com/animal-ehr/"
* identifier[=].value = "EHR-349827304"
* identifier[+].type = $identification-person-identifier-url#MCN "Microchip Number"
* identifier[=].system = "http://MyPet.example.com/animal-id/"
* identifier[=].value = "941091276493756"
* active = true
* name.text = "Michi"
* gender = #female
* birthDate = "2017-03-21"
* contact.relationship.coding[+] = $snomed-ct-url#224150009 "Pet ownership (observable entity)"
* contact.name.family = "Reyes López"
* contact.name.given[0] = "María"
* contact.name.given[+] = "Cristina"
* contact.telecom[0].system = #phone
* contact.telecom[=].value = "+57(601)111-1111"
* contact.telecom[=].use = #home
* contact.telecom[+].system = #phone
* contact.telecom[=].value = "+57(300)222-2222"
* contact.telecom[=].use = #home
* contact.telecom[+].system = #email
* contact.telecom[=].value = "propietario@example.com"
* contact.address.use = #home
* contact.address.text = "Cll 140 # 7B-75"
* contact.address.city = "Bogotá D.C"
* contact.address.state = "Bogotá D.C."
* contact.address.postalCode = "110121"
* contact.address.country = "CO"
* link.other = Reference(PetOwnerRelatedPerson/521a75f2-2781-417a-989e-abd462cc6624)
* link.type = #refer
* extension[AnimalSpecie].id = "patient-species"
* extension[AnimalSpecie].url = $animal-specie-url
* extension[AnimalSpecie].valueCodeableConcept = $animal-specie-cs-url#FELINE "Felino"
* extension[AnimalRace].id = "patient-race"
* extension[AnimalRace].url = $animal-race-url
* extension[AnimalRace].valueCodeableConcept = $animal-race-cs-url#ANGORA "Angora"
* extension[AnimalGenderStatus].id = "patient-gender-status"
* extension[AnimalGenderStatus].url = $animal-gender-status-url
* extension[AnimalGenderStatus].valueCodeableConcept = $animal-gender-status-cs-url#neutered "Neutered"