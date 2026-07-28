import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryBioenergeticsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryBioenergeticsCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLaw : Type u
  activationEnergy : Prop
  transitionStateTheory : Prop
  steadyStateApproximation : Prop
  orderedMechanism : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateLawClosed : R.rateLaw
  activationEnergyClosed : R.activationEnergy
  transitionStateTheoryClosed : R.transitionStateTheory
  steadyStateApproximationClosed : R.steadyStateApproximation
  orderedMechanismClosed : R.orderedMechanism

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateLaw ∧ R.activationEnergy ∧ R.transitionStateTheory ∧ R.steadyStateApproximation ∧ R.orderedMechanism

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) :
    ReactionKineticsClosed R := by
  exact And.intro E.rateLawClosed
    (And.intro E.activationEnergyClosed
      (And.intro E.transitionStateTheoryClosed
        (And.intro E.steadyStateApproximationClosed E.orderedMechanismClosed)))

end BiochemistryBioenergeticsCanonicalLaneLean
end HautevilleHouse
