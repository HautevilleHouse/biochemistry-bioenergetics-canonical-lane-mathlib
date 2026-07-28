import canonicalLaneMathlib.AdmissibleClass
import BiochemistryBioenergeticsCanonicalLaneLean.BioenergeticsObjects

namespace HautevilleHouse
namespace BiochemistryBioenergeticsCanonicalLaneLean

structure BioenergeticsTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : BioenergeticsAdmittedObject
  chemiosmoticCouplingValid : Prop
  atpProductionEfficiency : Prop
  redoxBalanceAchieved : Prop

end BiochemistryBioenergeticsCanonicalLaneLean
end HautevilleHouse