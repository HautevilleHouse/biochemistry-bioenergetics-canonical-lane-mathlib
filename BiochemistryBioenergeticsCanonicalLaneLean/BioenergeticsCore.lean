import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryBioenergeticsCanonicalLaneLean

structure BioenergeticSystem where
  systemType : Type u
  freeEnergyChange : Prop
  coupledReactions : Prop
  equilibriumConstant : Prop

structure AdmittedBioenergeticObject where
  system : BioenergeticSystem
  energyConservation : Prop
  reactionSpontaneity : Prop
  couplingEfficiency : Prop
  conclusion : reactionSpontaneity

def BioenergeticsWitnessClosed (O : AdmittedBioenergeticObject) : Prop :=
  O.reactionSpontaneity

end BiochemistryBioenergeticsCanonicalLaneLean
end HautevilleHouse
