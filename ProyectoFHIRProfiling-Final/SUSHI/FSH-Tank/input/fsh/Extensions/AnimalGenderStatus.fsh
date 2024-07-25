Extension: AnimalGenderStatus
Id: AnimalGenderStatus
* ^url = $animal-gender-status-url
// Solo se puede usar en el tipo paciente
* ^context.type = #element
* ^context.expression = "PetPatient"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $animal-gender-status-vs-url
* value[x].coding 1..1
* value[x].coding.system 1..1
* value[x].coding.system = $animal-gender-status-cs-url (exactly)
* value[x].coding.code 1..1
* value[x].coding.display 0..1
