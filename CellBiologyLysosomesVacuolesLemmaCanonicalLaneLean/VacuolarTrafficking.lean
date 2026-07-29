import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean

structure VacuolarTraffickingPackage where
  endocyticPathway : Prop
  autophagicDelivery : Prop
  vesicleFusion : Prop
  cargoSorting : Prop

structure VacuolarTraffickingEvidence (P : VacuolarTraffickingPackage) where
  endocyticPathwayClosed : P.endocyticPathway
  autophagicDeliveryClosed : P.autophagicDelivery
  vesicleFusionClosed : P.vesicleFusion
  cargoSortingClosed : P.cargoSorting

def VacuolarTraffickingClosed (P : VacuolarTraffickingPackage) : Prop :=
  P.endocyticPathway ∧ P.autophagicDelivery ∧ P.vesicleFusion ∧ P.cargoSorting

theorem vacuolar_trafficking_closed_from_evidence (P : VacuolarTraffickingPackage) (E : VacuolarTraffickingEvidence P) : VacuolarTraffickingClosed P := by
  exact And.intro E.endocyticPathwayClosed (And.intro E.autophagicDeliveryClosed (And.intro E.vesicleFusionClosed E.cargoSortingClosed))

end CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean
end HautevilleHouse
