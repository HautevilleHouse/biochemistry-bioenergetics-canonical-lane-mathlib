import HautevilleHouse.BiochemistryBioenergeticsCanonicalLaneLean.ElectronTransportChain

namespace HautevilleHouse
namespace BiochemistryBioenergeticsCanonicalLaneLean

structure ATPsynthasePackage where
  f0Domain : Prop
  f1Domain : Prop
  rotationalCatalysis : Prop
  protonFlowDrivesATP : Prop
  bindingChangeMechanism : Prop

structure ATPsynthaseEvidence (A : ATPsynthasePackage) where
  f0DomainClosed : A.f0Domain
  f1DomainClosed : A.f1Domain
  rotationalCatalysisClosed : A.rotationalCatalysis
  protonFlowDrivesATPClosed : A.protonFlowDrivesATP
  bindingChangeMechanismClosed : A.bindingChangeMechanism

def ATPsynthaseClosed (A : ATPsynthasePackage) : Prop :=
  A.f0Domain ∧ A.f1Domain ∧ A.rotationalCatalysis ∧
  A.protonFlowDrivesATP ∧ A.bindingChangeMechanism

theorem atp_synthase_closed_from_evidence
    (A : ATPsynthasePackage) (Ev : ATPsynthaseEvidence A) :
    ATPsynthaseClosed A := by
  exact And.intro Ev.f0DomainClosed (And.intro Ev.f1DomainClosed
    (And.intro Ev.rotationalCatalysisClosed
      (And.intro Ev.protonFlowDrivesATPClosed Ev.bindingChangeMechanismClosed)))

end BiochemistryBioenergeticsCanonicalLaneLean
end HautevilleHouse
