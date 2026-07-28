import HautevilleHouse.BiochemistryBioenergeticsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BiochemistryBioenergeticsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  A.gateWitness

end BiochemistryBioenergeticsCanonicalLaneLean
end HautevilleHouse