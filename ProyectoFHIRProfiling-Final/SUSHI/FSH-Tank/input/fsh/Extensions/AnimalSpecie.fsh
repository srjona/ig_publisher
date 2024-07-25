Extension: AnimalSpecie
Id: AnimalSpecie
* ^url = $animal-specie-url
// Solo se puede usar en el tipo paciente
* ^context.type = #element
* ^context.expression = "PetPatient"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from $animal-specie-vs-url
* value[x].coding 1..1
* value[x].coding.system 1..1
* value[x].coding.system = $animal-specie-cs-url (exactly)
* value[x].coding.code 1..1
* value[x].coding.display 0..1
