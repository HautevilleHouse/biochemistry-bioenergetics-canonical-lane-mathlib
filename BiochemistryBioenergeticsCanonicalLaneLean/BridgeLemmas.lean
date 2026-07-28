import HautevilleHouse.BiochemistryBioenergeticsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryBioenergeticsCanonicalLaneLean

def BioenergeticWitnessClosed (O : BioenergeticAdmittedObject) : Prop :=
  O.closednessCondition

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BioenergeticWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.closednessCondition

end BiochemistryBioenergeticsCanonicalLaneLean
end HautevilleHouse