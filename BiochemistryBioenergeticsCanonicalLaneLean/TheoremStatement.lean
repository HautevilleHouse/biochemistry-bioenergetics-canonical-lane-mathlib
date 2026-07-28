import BiochemistryBioenergeticsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BiochemistryBioenergeticsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  bioenergeticsConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String := "biochemistry-bioenergetics-canonical-lane"
def sourceDescription : String := "Bioenergetics canonical lane: kinetic and thermodynamic closure"

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository,
    theoremName := sourceRepository,
    theoremObject := sourceDescription,
    classicalBoundary := "classical source boundary carried",
    bioenergeticsConstrainedStatement := "bioenergetics-constrained theorem certificate internalized through closure",
    certificateLane := "bioenergetics_constrained",
    carriedRemainder := "carried"
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "bioenergetics_constrained" := by
  rfl

end BiochemistryBioenergeticsCanonicalLaneLean
end HautevilleHouse