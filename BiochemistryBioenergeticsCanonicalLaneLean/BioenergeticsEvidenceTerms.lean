import canonicalLaneMathlib.AdmissibleClass
import BiochemistryBioenergeticsCanonicalLaneLean.ThermodynamicBalance

namespace HautevilleHouse
namespace BiochemistryBioenergeticsCanonicalLaneLean

structure CurvatureAnalyticEvidenceTerms {G : ThermodynamicBalancePackage}
    (C : CurvatureAnalyticCertificate G) where
  energyConservationTerm : C.energyConservation
  gibbsFreeEnergyChangeTerm : C.gibbsFreeEnergyChange
  reactionEquilibriumTerm : C.reactionEquilibrium
  protonMotiveForceTerm : C.protonMotiveForce
  balanceClosed : ThermodynamicBalanceClosed G

def CurvatureAnalyticCertificate.evidenceTerms {G : ThermodynamicBalancePackage}
    (C : CurvatureAnalyticCertificate G) : CurvatureAnalyticEvidenceTerms C := {
  energyConservationTerm := C.energyConservationClosed
  gibbsFreeEnergyChangeTerm := C.gibbsFreeEnergyChangeClosed
  reactionEquilibriumTerm := C.reactionEquilibriumClosed
  protonMotiveForceTerm := C.protonMotiveForceClosed
  balanceClosed := thermodynamic_balance_closed_from_evidence G C.balanceEvidence
}

end BiochemistryBioenergeticsCanonicalLaneLean
end HautevilleHouse