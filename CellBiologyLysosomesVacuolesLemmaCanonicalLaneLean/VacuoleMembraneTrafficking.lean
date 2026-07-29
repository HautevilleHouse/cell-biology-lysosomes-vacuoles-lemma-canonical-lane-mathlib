import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean

structure VacuoleMembraneTraffickingPackage where
  vesicleType : String
  cargo : String
  fusionCompetence : Prop
  dockingCompleted : Prop
  snareComplexFormed : Prop

structure VacuoleMembraneTraffickingEvidence (V : VacuoleMembraneTraffickingPackage) where
  fusionCompetenceClosed : V.fusionCompetence
  dockingCompletedClosed : V.dockingCompleted
  snareComplexFormedClosed : V.snareComplexFormed

def VacuoleMembraneTraffickingClosed (V : VacuoleMembraneTraffickingPackage) : Prop :=
  V.fusionCompetence ∧ V.dockingCompleted ∧ V.snareComplexFormed

theorem vacuole_membrane_trafficking_closed_from_evidence
    (V : VacuoleMembraneTraffickingPackage) (E : VacuoleMembraneTraffickingEvidence V) :
    VacuoleMembraneTraffickingClosed V := by
  exact And.intro E.fusionCompetenceClosed
    (And.intro E.dockingCompletedClosed E.snareComplexFormedClosed)

end CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean
end HautevilleHouse
