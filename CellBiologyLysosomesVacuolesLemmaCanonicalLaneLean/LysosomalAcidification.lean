import HautevilleHouse.CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean

structure VacuolarATPase where
  protonPumpActive : Prop
  membranePotentialEstablished : Prop

def acidificationAchieved (v : VacuolarATPase) : Prop :=
  v.protonPumpActive ∧ v.membranePotentialEstablished

theorem acidification_bridge (v : VacuolarATPase) : acidificationAchieved v :=
  And.intro v.protonPumpActive v.membranePotentialEstablished

end CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean
end HautevilleHouse
