import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean

structure CellBiologyLysosomesVacuolesSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CellBiologyLysosomesVacuolesAdmittedObject where
  space : CellBiologyLysosomesVacuolesSpace
  lysosomeVacuoleFunction : Prop
  membraneTrafficking : Prop
  housekeepingProteolysis : Prop
  conclusion : membraneTrafficking ∧ housekeepingProteolysis

def CellBiologyLysosomesVacuolesWitnessClosed (O : CellBiologyLysosomesVacuolesAdmittedObject) : Prop :=
  O.membraneTrafficking ∧ O.housekeepingProteolysis

end CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean
end HautevilleHouse
