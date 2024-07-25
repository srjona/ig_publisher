Extension: AnimalRace
Id: AnimalRace
* ^url = $animal-race-url
// Solo se puede usar en el tipo paciente
* ^context.type = #element
* ^context.expression = "PetPatient"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $animal-race-vs-url
* value[x].coding 1..1
* value[x].coding.system 1..1
* value[x].coding.system = $animal-race-cs-url (exactly)
* value[x].coding.code 1..1
* value[x].coding.display 0..1
