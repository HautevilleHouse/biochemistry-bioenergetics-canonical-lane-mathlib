import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryBioenergeticsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryBioenergeticsCanonicalLaneLean

structure MolecularOrbitalPackage where
  huckelMethod : Prop
  homoLumoGap : Prop
  aromaticity : Prop
  frontierOrbitalTheory : Prop
  ligandFieldTheory : Prop

structure MolecularOrbitalEvidence (M : MolecularOrbitalPackage) where
  huckelMethodClosed : M.huckelMethod
  homoLumoGapClosed : M.homoLumoGap
  aromaticityClosed : M.aromaticity
  frontierOrbitalTheoryClosed : M.frontierOrbitalTheory
  ligandFieldTheoryClosed : M.ligandFieldTheory

def MolecularOrbitalClosed (M : MolecularOrbitalPackage) : Prop :=
  M.huckelMethod ∧ M.homoLumoGap ∧ M.aromaticity ∧ M.frontierOrbitalTheory ∧ M.ligandFieldTheory

theorem molecular_orbital_closed_from_evidence (M : MolecularOrbitalPackage) (E : MolecularOrbitalEvidence M) :
    MolecularOrbitalClosed M := by
  exact And.intro E.huckelMethodClosed
    (And.intro E.homoLumoGapClosed
      (And.intro E.aromaticityClosed
        (And.intro E.frontierOrbitalTheoryClosed E.ligandFieldTheoryClosed)))

end BiochemistryBioenergeticsCanonicalLaneLean
end HautevilleHouse
