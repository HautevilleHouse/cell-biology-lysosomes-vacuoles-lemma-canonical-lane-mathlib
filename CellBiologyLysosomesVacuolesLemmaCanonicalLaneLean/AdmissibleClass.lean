import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean

structure LysosomeVacuoleAdmittedObject where
  cellType : Type
  lysosomeMembrane : Prop
  vacuoleAcidity : Prop
  hydrolaseActivity : Nonempty (Prop)
  conclusion : lysosomeMembrane ∧ vacuoleAcidity ∧ Nonempty (Prop)

structure AdmissibleClass where
  object : LysosomeVacuoleAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LysosomeVacuoleWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def LysosomeVacuoleWitnessClosed (O : LysosomeVacuoleAdmittedObject) : Prop :=
  O.lysosomeMembrane ∧ O.vacuoleAcidity ∧ Nonempty (Prop)

end CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean
end HautevilleHouse
