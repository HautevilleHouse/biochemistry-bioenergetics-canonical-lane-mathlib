import BiochemistryBioenergeticsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryBioenergeticsCanonicalLaneLean

structure ThermodynamicsPackage where
  gibbsFreeEnergy : Prop
  enthalpyChange : Prop
  entropyChange : Prop
  spontaneity : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  enthalpyChangeClosed : T.enthalpyChange
  entropyChangeClosed : T.entropyChange
  spontaneityClosed : T.spontaneity

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.gibbsFreeEnergy ∧ T.enthalpyChange ∧ T.entropyChange ∧ T.spontaneity

theorem thermodynamics_closed_from_evidence
    (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact And.intro E.gibbsFreeEnergyClosed
    (And.intro E.enthalpyChangeClosed
      (And.intro E.entropyChangeClosed E.spontaneityClosed))

end BiochemistryBioenergeticsCanonicalLaneLean
end HautevilleHouse