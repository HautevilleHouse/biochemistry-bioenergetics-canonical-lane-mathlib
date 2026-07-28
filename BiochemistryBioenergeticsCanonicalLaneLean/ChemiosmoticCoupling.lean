import HautevilleHouse.BiochemistryBioenergeticsCanonicalLaneLean.ATP_Synthase

namespace HautevilleHouse
namespace BiochemistryBioenergeticsCanonicalLaneLean

structure ChemiosmoticCouplingPackage where
  protonMotiveForce : Prop
  innerMembraneImpermeable : Prop
  atpSynthaseCoupling : Prop
  respiratoryControl : Prop
  uncouplingProteins : Prop

structure ChemiosmoticCouplingEvidence (C : ChemiosmoticCouplingPackage) where
  protonMotiveForceClosed : C.protonMotiveForce
  innerMembraneImpermeableClosed : C.innerMembraneImpermeable
  atpSynthaseCouplingClosed : C.atpSynthaseCoupling
  respiratoryControlClosed : C.respiratoryControl
  uncouplingProteinsClosed : C.uncouplingProteins

def ChemiosmoticCouplingClosed (C : ChemiosmoticCouplingPackage) : Prop :=
  C.protonMotiveForce ∧ C.innerMembraneImpermeable ∧
  C.atpSynthaseCoupling ∧ C.respiratoryControl ∧ C.uncouplingProteins

theorem chemiosmotic_coupling_closed_from_evidence
    (C : ChemiosmoticCouplingPackage) (Ev : ChemiosmoticCouplingEvidence C) :
    ChemiosmoticCouplingClosed C := by
  exact And.intro Ev.protonMotiveForceClosed (And.intro Ev.innerMembraneImpermeableClosed
    (And.intro Ev.atpSynthaseCouplingClosed
      (And.intro Ev.respiratoryControlClosed Ev.uncouplingProteinsClosed)))

end BiochemistryBioenergeticsCanonicalLaneLean
end HautevilleHouse
