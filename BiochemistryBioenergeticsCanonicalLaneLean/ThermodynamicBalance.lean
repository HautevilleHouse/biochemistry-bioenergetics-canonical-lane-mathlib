import canonicalLaneMathlib.AdmissibleClass
import BiochemistryBioenergeticsCanonicalLaneLean.BioenergeticsObjects

namespace HautevilleHouse
namespace BiochemistryBioenergeticsCanonicalLaneLean

structure ThermodynamicBalancePackage where
  energyConservation : Prop
  gibbsFreeEnergyChange : Prop
  reactionEquilibrium : Prop
  protonMotiveForce : Prop

structure ThermodynamicBalanceEvidence (T : ThermodynamicBalancePackage) where
  energyConservationClosed : T.energyConservation
  gibbsFreeEnergyChangeClosed : T.gibbsFreeEnergyChange
  reactionEquilibriumClosed : T.reactionEquilibrium
  protonMotiveForceClosed : T.protonMotiveForce

def ThermodynamicBalanceClosed (T : ThermodynamicBalancePackage) : Prop :=
  T.energyConservation ∧ T.gibbsFreeEnergyChange ∧ T.reactionEquilibrium ∧ T.protonMotiveForce

theorem thermodynamic_balance_closed_from_evidence (T : ThermodynamicBalancePackage)
    (E : ThermodynamicBalanceEvidence T) : ThermodynamicBalanceClosed T := by
  exact And.intro E.energyConservationClosed
    (And.intro E.gibbsFreeEnergyChangeClosed
      (And.intro E.reactionEquilibriumClosed E.protonMotiveForceClosed))

end BiochemistryBioenergeticsCanonicalLaneLean
end HautevilleHouse