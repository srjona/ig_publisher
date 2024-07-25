Profile: PetTypeCoat
Parent: Observation
Id: PetTypeCoat
* ^url = $pet-observation-typecoat-url
* ^status = #draft
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $animal-specie-vs-url
* value[x].coding 1..1
* value[x].coding.system 1..1
* value[x].coding.system = $animal-specie-cs-url (exactly)
* value[x].coding.code 1..1
* value[x].text 0..0