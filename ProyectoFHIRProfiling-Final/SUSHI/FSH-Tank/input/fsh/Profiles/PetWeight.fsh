Profile: PetWeight
Parent: Observation
Id: PetWeight
* ^url = $pet-observation-weigth-url
* ^status = #draft
* value[x] 1..1
* value[x] only Quantity
* value[x].system 1..1
* value[x].system = "http://unitsofmeasure.org" (exactly)
* value[x].unit 1..1
* value[x].unit = "kg"
* value[x].value 1..1