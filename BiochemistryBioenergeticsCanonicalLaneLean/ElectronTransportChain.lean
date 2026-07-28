import HautevilleHouse.BiochemistryBioenergeticsCanonicalLaneLean.MitochondrialMembrane

namespace HautevilleHouse
namespace BiochemistryBioenergeticsCanonicalLaneLean

structure ElectronTransportChainPackage where
  complexI : Prop
  complexII : Prop
  complexIII : Prop
  complexIV : Prop
  protonGradientEstablished : Prop
  redoxPotentialProgression : Prop

structure ElectronTransportChainEvidence (E : ElectronTransportChainPackage) where
  complexIClosed : E.complexI
  complexIIClosed : E.complexII
  complexIIIClosed : E.complexIII
  complexIVClosed : E.complexIV
  protonGradientEstablishedClosed : E.protonGradientEstablished
  redoxPotentialProgressionClosed : E.redoxPotentialProgression

def ElectronTransportChainClosed (E : ElectronTransportChainPackage) : Prop :=
  E.complexI ∧ E.complexII ∧ E.complexIII ∧ E.complexIV ∧
  E.protonGradientEstablished ∧ E.redoxPotentialProgression

theorem electron_transport_chain_closed_from_evidence
    (E : ElectronTransportChainPackage) (Ev : ElectronTransportChainEvidence E) :
    ElectronTransportChainClosed E := by
  exact And.intro Ev.complexIClosed (And.intro Ev.complexIIClosed
    (And.intro Ev.complexIIIClosed (And.intro Ev.complexIVClosed
      (And.intro Ev.protonGradientEstablishedClosed Ev.redoxPotentialProgressionClosed))))

end BiochemistryBioenergeticsCanonicalLaneLean
end HautevilleHouse
