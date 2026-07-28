import HautevilleHouse.BiochemistryBioenergeticsCanonicalLaneLean.BioenergeticsCore

namespace HautevilleHouse
namespace BiochemistryBioenergeticsCanonicalLaneLean

structure MitochondrialMembranePackage where
  innerMembrane : Prop
  outerMembrane : Prop
  intermembraneSpace : Prop
  matrix : Prop
  membranePotential : Prop

structure MitochondrialMembraneEvidence (M : MitochondrialMembranePackage) where
  innerMembraneClosed : M.innerMembrane
  outerMembraneClosed : M.outerMembrane
  intermembraneSpaceClosed : M.intermembraneSpace
  matrixClosed : M.matrix
  membranePotentialClosed : M.membranePotential

def MitochondrialMembraneClosed (M : MitochondrialMembranePackage) : Prop :=
  M.innerMembrane ∧ M.outerMembrane ∧ M.intermembraneSpace ∧
  M.matrix ∧ M.membranePotential

theorem mitochondrial_membrane_closed_from_evidence
    (M : MitochondrialMembranePackage) (Ev : MitochondrialMembraneEvidence M) :
    MitochondrialMembraneClosed M := by
  exact And.intro Ev.innerMembraneClosed (And.intro Ev.outerMembraneClosed
    (And.intro Ev.intermembraneSpaceClosed
      (And.intro Ev.matrixClosed Ev.membranePotentialClosed)))

end BiochemistryBioenergeticsCanonicalLaneLean
end HautevilleHouse
