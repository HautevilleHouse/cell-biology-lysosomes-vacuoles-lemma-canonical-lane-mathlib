import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean

structure VesicleTraffickingPackage where
  transportPathway : Type u
  membraneFusion : Prop
  cargoSorting : Prop
  rabGTPaseRegulation : Prop
  snareComplexAssembly : Prop

structure VesicleTraffickingEvidence (V : VesicleTraffickingPackage) where
  membraneFusionClosed : V.membraneFusion
  cargoSortingClosed : V.cargoSorting
  rabGTPaseRegulationClosed : V.rabGTPaseRegulation
  snareComplexAssemblyClosed : V.snareComplexAssembly

def VesicleTraffickingClosed (V : VesicleTraffickingPackage) : Prop :=
  V.membraneFusion ∧ V.cargoSorting ∧ V.rabGTPaseRegulation ∧ V.snareComplexAssembly

theorem vesicle_trafficking_closed_from_evidence (V : VesicleTraffickingPackage)
    (E : VesicleTraffickingEvidence V) : VesicleTraffickingClosed V := by
  exact And.intro E.membraneFusionClosed
    (And.intro E.cargoSortingClosed
      (And.intro E.rabGTPaseRegulationClosed E.snareComplexAssemblyClosed))

end CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean
end HautevilleHouse