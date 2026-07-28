import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryBioenergeticsCanonicalLaneLean

structure RedoxReactionsPackage where
  redoxPotential : Prop
  electronTransfer : Prop
  nernstEquation : Prop
  standardPotential : Prop

structure RedoxReactionsEvidence (R : RedoxReactionsPackage) where
  redoxPotentialClosed : R.redoxPotential
  electronTransferClosed : R.electronTransfer
  nernstEquationClosed : R.nernstEquation
  standardPotentialClosed : R.standardPotential

def RedoxReactionsClosed (R : RedoxReactionsPackage) : Prop :=
  R.redoxPotential ∧ R.electronTransfer ∧ R.nernstEquation ∧ R.standardPotential

theorem redox_reactions_closed_from_evidence (R : RedoxReactionsPackage)
    (E : RedoxReactionsEvidence R) : RedoxReactionsClosed R := by
  exact And.intro E.redoxPotentialClosed (And.intro E.electronTransferClosed
    (And.intro E.nernstEquationClosed E.standardPotentialClosed))

end BiochemistryBioenergeticsCanonicalLaneLean
end HautevilleHouse