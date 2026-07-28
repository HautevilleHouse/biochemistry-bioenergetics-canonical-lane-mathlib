import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryBioenergeticsCanonicalLaneLean

structure EnzymeKineticsPackage where
  michaelisMenten : Prop
  turnoverNumber : Prop
  inhibitionType : Prop
  allostericRegulation : Prop

structure EnzymeKineticsEvidence (E : EnzymeKineticsPackage) where
  michaelisMentenClosed : E.michaelisMenten
  turnoverNumberClosed : E.turnoverNumber
  inhibitionTypeClosed : E.inhibitionType
  allostericRegulationClosed : E.allostericRegulation

def EnzymeKineticsClosed (E : EnzymeKineticsPackage) : Prop :=
  E.michaelisMenten ∧ E.turnoverNumber ∧ E.inhibitionType ∧ E.allostericRegulation

theorem enzyme_kinetics_closed_from_evidence (E : EnzymeKineticsPackage)
    (Ev : EnzymeKineticsEvidence E) : EnzymeKineticsClosed E := by
  exact And.intro Ev.michaelisMentenClosed (And.intro Ev.turnoverNumberClosed
    (And.intro Ev.inhibitionTypeClosed Ev.allostericRegulationClosed))

end BiochemistryBioenergeticsCanonicalLaneLean
end HautevilleHouse