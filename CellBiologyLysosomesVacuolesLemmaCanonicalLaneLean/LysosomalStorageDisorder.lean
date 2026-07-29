import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean

structure LysosomalStorageDisorderPackage where
  enzymeDeficiency : Type u
  substrateAccumulation : Prop
  cellularPathology : Prop
  diseasePhenotype : Prop
  therapeuticIntervention : Prop

structure LysosomalStorageDisorderEvidence (L : LysosomalStorageDisorderPackage) where
  substrateAccumulationClosed : L.substrateAccumulation
  cellularPathologyClosed : L.cellularPathology
  diseasePhenotypeClosed : L.diseasePhenotype
  therapeuticInterventionClosed : L.therapeuticIntervention

def LysosomalStorageDisorderClosed (L : LysosomalStorageDisorderPackage) : Prop :=
  L.substrateAccumulation ∧ L.cellularPathology ∧ L.diseasePhenotype ∧ L.therapeuticIntervention

theorem lysosomal_storage_disorder_closed_from_evidence (L : LysosomalStorageDisorderPackage)
    (E : LysosomalStorageDisorderEvidence L) : LysosomalStorageDisorderClosed L := by
  exact And.intro E.substrateAccumulationClosed
    (And.intro E.cellularPathologyClosed
      (And.intro E.diseasePhenotypeClosed E.therapeuticInterventionClosed))

end CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean
end HautevilleHouse