import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryBioenergeticsCanonicalLaneLean

structure BioenergeticsPathwaysPackage where
  atpSynthesis : Prop
  electronTransportChain : Prop
  protonGradient : Prop
  oxidativePhosphorylation : Prop

structure BioenergeticsPathwaysEvidence (B : BioenergeticsPathwaysPackage) where
  atpSynthesisClosed : B.atpSynthesis
  electronTransportChainClosed : B.electronTransportChain
  protonGradientClosed : B.protonGradient
  oxidativePhosphorylationClosed : B.oxidativePhosphorylation

def BioenergeticsPathwaysClosed (B : BioenergeticsPathwaysPackage) : Prop :=
  B.atpSynthesis ∧ B.electronTransportChain ∧ B.protonGradient ∧ B.oxidativePhosphorylation

theorem bioenergetics_pathways_closed_from_evidence (B : BioenergeticsPathwaysPackage)
    (E : BioenergeticsPathwaysEvidence B) : BioenergeticsPathwaysClosed B := by
  exact And.intro E.atpSynthesisClosed (And.intro E.electronTransportChainClosed
    (And.intro E.protonGradientClosed E.oxidativePhosphorylationClosed))

end BiochemistryBioenergeticsCanonicalLaneLean
end HautevilleHouse