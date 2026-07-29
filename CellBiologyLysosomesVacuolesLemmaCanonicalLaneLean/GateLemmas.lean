import HautevilleHouse.CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean
end HautevilleHouse
