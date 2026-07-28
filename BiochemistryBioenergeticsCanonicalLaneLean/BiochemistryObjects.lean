import BiochemistryBioenergeticsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryBioenergeticsCanonicalLaneLean

structure BiochemistryAdmittedObject where
  system : Type
  hasATPProduction : Prop
  hasElectronTransportChain : Prop
  hasProtonGradient : Prop
  conclusion : hasATPProduction ∧ hasElectronTransportChain ∧ hasProtonGradient

def BiochemistryWitnessClosed (O : BiochemistryAdmittedObject) : Prop :=
  O.conclusion

end BiochemistryBioenergeticsCanonicalLaneLean
end HautevilleHouse