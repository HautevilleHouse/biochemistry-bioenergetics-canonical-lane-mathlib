import HautevilleHouse.BiochemistryBioenergeticsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BiochemistryBioenergeticsCanonicalLaneLean

def ConstrainedBiochemistryBioenergeticsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_biochemistry_bioenergetics_endgame (A : AdmissibleClass) :
    ConstrainedBiochemistryBioenergeticsClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiochemistryBioenergeticsCanonicalLaneLean
end HautevilleHouse