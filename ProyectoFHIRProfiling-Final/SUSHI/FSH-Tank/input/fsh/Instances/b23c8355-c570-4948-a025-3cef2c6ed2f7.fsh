Instance: b23c8355-c570-4948-a025-3cef2c6ed2f7
InstanceOf: VetComposition
Usage: #example
* identifier.system = "http://myvet.example.com/document-identifier"
* identifier.value = "4dad935c-a7bd"
* status = #final
* type = $loinc-url#18842-5 "Discharge summary"
* category = $loinc-url#11503-0 "Medical records"
* subject = Reference(PetPatient/64765015-97b9-4391-bab2-c6b821527adc)
* date = "2023-03-28T09:23:45-05:00"
* author = Reference(VetPractitioner/e8bc83dc-e0ff-41df-94f1-c00e4799cf52)
* custodian = Reference(VetOrganization/9bab292b-736c-4ce8-86b4-a004264fc7d9)
* title = "HISTORIA CLÍNICA VETERINARIA"
* section[RelatedOwnerSection].title = "Datos del propietario"
* section[RelatedOwnerSection].entry = Reference(PetRelatedPerson/521a75f2-2781-417a-989e-abd462cc6624)
* section[PetObservations].title = "Reseña"
* section[PetObservations].entry[0] = Reference(PetTypeCoat/238734586325)
* section[PetObservations].entry[+] = Reference(PetWeight/453452453)
* section[PetObservations].entry[+] = Reference(PetParticularSigns/R3453435)
* section[PetObservations].entry[+] = Reference(PetOrigin/FEGR45533)
* section[PetObservations].entry[+] = Reference(PetZootechnicalPurpose/2343324)
* section[+].title = "Anamnesis"
* section[+].title = "Examen físico general"
* section[+].title = "Abordaje diagnóstico"
* section[+].title = "Exámenes complementarios y resultados"
* section[+].title = "Diagnóstico presuntivo y justificado"
* section[+].title = "Diagnóstico definitivo"
* section[+].title = "Plan terapéutico"
* section[+].title = "Pronóstico"
* section[+].title = "Evolución"
* section[+].title = "Observaciones"
* section[+].title = "Anexos"