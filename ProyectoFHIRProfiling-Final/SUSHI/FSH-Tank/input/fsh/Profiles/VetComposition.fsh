Profile: VetComposition
Parent: Composition
Id: VetComposition

* ^url = $vet-composition-url
* ^status = #draft
* ^contact.telecom.system = #phone

* identifier 1..1
* identifier.use 0..0
* identifier.type 0..0
* identifier.system 1..1
* identifier.value 1..1
* identifier.period 0..0
* identifier.assigner 0..0
* status 1..1
* category 1..1
* category.coding 1..1
* category.coding.system = $loinc-url (exactly)
* category.coding.code = #11503-0 (exactly)
* category.coding.display = "Medical records" (exactly)
* category.text 0..0
* subject 1..1
* subject.reference 1..1
* subject only Reference($pet-patient-url)
* author 1..1
* author.reference 1..1
* author only Reference($vet-practitioner-profile-url)
* attester 0..1
* attester.party 1..1
* attester.party only Reference($vet-practitioner-profile-url)
* custodian 1..1
* custodian.reference 1..1
* custodian only Reference($vet-organization-url)
* title 1..1
* section 1..*
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "id"
* section ^slicing.rules = #open
* section contains
    RelatedOwnerSection 1..1 and
    PetObservations 1..1
* section[RelatedOwnerSection].title 1..1
* section[RelatedOwnerSection].entry 1..1
* section[RelatedOwnerSection].entry.reference 1..1
* section[RelatedOwnerSection].entry only Reference($pet-owner-related-person-profile-url)
* section[PetObservations].title 1..1
* section[PetObservations].entry 1..*
* section[PetObservations].entry only Reference($pet-observation-weigth-url or $pet-observation-typecoat-url or $pet-observation-particularsigns-url or $pet-observation-zootechnical-purpose-url or $pet-observation-origin-url)