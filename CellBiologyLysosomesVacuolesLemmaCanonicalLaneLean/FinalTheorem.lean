import HautevilleHouse.CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean

def ConstrainedLysosomeVacuoleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_lysosome_vacuole_endgame (A : AdmissibleClass) :
    ConstrainedLysosomeVacuoleClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean
end HautevilleHouse
