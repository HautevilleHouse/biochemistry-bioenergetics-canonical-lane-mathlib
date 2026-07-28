import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryBioenergeticsCanonicalLaneLean

structure BioenergeticSystem where
  carrier : Type
  gibbsFreeEnergy : Prop
  reactionRate : Prop
  equilibriumConstant : Prop
  atpYield : Nat

structure BioenergeticAdmittedObject where
  system : BioenergeticSystem
  closednessCondition : Prop
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure AdmissibleClass where
  object : BioenergeticAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.closednessCondition) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryBioenergeticsCanonicalLaneLean
end HautevilleHouse