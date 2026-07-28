import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryBioenergeticsCanonicalLaneLean

structure Molecule where
  name : String
  concentration : ℝ
  potential : ℝ

structure Reaction where
  reactants : List Molecule
  products : List Molecule
  rateConstant : ℝ
  equilibriumConstant : ℝ

structure EnergyCurrency where
  molecule : Molecule
  hydrolysisEnergy : ℝ
  synthesisEnergy : ℝ

structure ProtonGradient where
  innerConcentration : ℝ
  outerConcentration : ℝ
  voltage : ℝ

structure ATP where
  molecule : Molecule
  producedBy : Reaction

end BiochemistryBioenergeticsCanonicalLaneLean
end HautevilleHouse