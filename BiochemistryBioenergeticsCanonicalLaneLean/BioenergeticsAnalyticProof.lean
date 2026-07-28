import canonicalLaneMathlib.AdmissibleClass
import BiochemistryBioenergeticsCanonicalLaneLean.BioenergeticsEvidenceTerms

namespace HautevilleHouse
namespace BiochemistryBioenergeticsCanonicalLaneLean

structure CurvatureAnalyticCertificate (G : ThermodynamicBalancePackage) where
  energyConservation : Prop
  gibbsFreeEnergyChange : Prop
  reactionEquilibrium : Prop
  protonMotiveForce : Prop
  energyConservationClosed : energyConservation
  gibbsFreeEnergyChangeClosed : gibbsFreeEnergyChange
  reactionEquilibriumClosed : reactionEquilibrium
  protonMotiveForceClosed : protonMotiveForce
  balanceEvidence : ThermodynamicBalanceEvidence G

def CurvatureAnalyticCertificateClosed {G : ThermodynamicBalancePackage}
    (C : CurvatureAnalyticCertificate G) : Prop :=
  C.energyConservation ∧ C.gibbsFreeEnergyChange ∧ C.reactionEquilibrium ∧ C.protonMotiveForce ∧
  ThermodynamicBalanceClosed G

theorem curvature_analytic_certificate_closed {G : ThermodynamicBalancePackage}
    (C : CurvatureAnalyticCertificate G) : CurvatureAnalyticCertificateClosed C := by
  exact And.intro C.energyConservationClosed
    (And.intro C.gibbsFreeEnergyChangeClosed
      (And.intro C.reactionEquilibriumClosed
        (And.intro C.protonMotiveForceClosed
          (thermodynamic_balance_closed_from_evidence G C.balanceEvidence))))

end BiochemistryBioenergeticsCanonicalLaneLean
end HautevilleHouse