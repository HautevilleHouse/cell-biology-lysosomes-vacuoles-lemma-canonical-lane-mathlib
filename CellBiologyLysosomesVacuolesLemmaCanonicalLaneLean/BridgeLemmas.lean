import HautevilleHouse.CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LysosomeVacuoleWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean
end HautevilleHouse
