import BiochemistryBioenergeticsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryBioenergeticsCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  equilibriumConstant : Prop
  lawOfMassAction : Prop
  leChatelierPrinciple : Prop
  coupledReactions : Prop

structure ChemicalEquilibriumEvidence (C : ChemicalEquilibriumPackage) where
  equilibriumConstantClosed : C.equilibriumConstant
  lawOfMassActionClosed : C.lawOfMassAction
  leChatelierPrincipleClosed : C.leChatelierPrinciple
  coupledReactionsClosed : C.coupledReactions

def ChemicalEquilibriumClosed (C : ChemicalEquilibriumPackage) : Prop :=
  C.equilibriumConstant ∧ C.lawOfMassAction ∧ C.leChatelierPrinciple ∧ C.coupledReactions

theorem chemical_equilibrium_closed_from_evidence
    (C : ChemicalEquilibriumPackage) (E : ChemicalEquilibriumEvidence C) :
    ChemicalEquilibriumClosed C := by
  exact And.intro E.equilibriumConstantClosed
    (And.intro E.lawOfMassActionClosed
      (And.intro E.leChatelierPrincipleClosed E.coupledReactionsClosed))

end BiochemistryBioenergeticsCanonicalLaneLean
end HautevilleHouse