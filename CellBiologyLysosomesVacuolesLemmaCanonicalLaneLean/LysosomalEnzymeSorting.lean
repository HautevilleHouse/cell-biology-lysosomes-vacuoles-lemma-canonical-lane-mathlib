import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean

structure Mannose6PhosphateTag where
  phosphotransferaseActive : Prop
  tagAttached : Prop
  cargoRecognized : Prop

structure M6PReceptor where
  receptorPresent : Prop
  bindingAffinity : Prop
  clathrinMediatedTrafficking : Prop

structure LysosomalEnzymeSortingPackage where
  m6pTag : Mannose6PhosphateTag
  m6pReceptor : M6PReceptor
  golgiToEndosomeTransport : Prop
  endosomeToLysosomeDelivery : Prop
  tagRemoved : Prop

structure LysosomalEnzymeSortingEvidence (L : LysosomalEnzymeSortingPackage) where
  m6pTagEvidence : L.m6pTag.phosphotransferaseActive ∧ L.m6pTag.tagAttached ∧ L.m6pTag.cargoRecognized
  m6pReceptorEvidence : L.m6pReceptor.receptorPresent ∧ L.m6pReceptor.bindingAffinity ∧ L.m6pReceptor.clathrinMediatedTrafficking
  golgiToEndosomeTransportClosed : L.golgiToEndosomeTransport
  endosomeToLysosomeDeliveryClosed : L.endosomeToLysosomeDelivery
  tagRemovedClosed : L.tagRemoved

def LysosomalEnzymeSortingClosed (L : LysosomalEnzymeSortingPackage) : Prop :=
  (L.m6pTag.phosphotransferaseActive ∧ L.m6pTag.tagAttached ∧ L.m6pTag.cargoRecognized) ∧
  (L.m6pReceptor.receptorPresent ∧ L.m6pReceptor.bindingAffinity ∧ L.m6pReceptor.clathrinMediatedTrafficking) ∧
  L.golgiToEndosomeTransport ∧ L.endosomeToLysosomeDelivery ∧ L.tagRemoved

theorem lysosomal_enzyme_sorting_closed_from_evidence
    (L : LysosomalEnzymeSortingPackage) (E : LysosomalEnzymeSortingEvidence L) :
    LysosomalEnzymeSortingClosed L := by
  exact And.intro E.m6pTagEvidence
    (And.intro E.m6pReceptorEvidence
      (And.intro E.golgiToEndosomeTransportClosed
        (And.intro E.endosomeToLysosomeDeliveryClosed E.tagRemovedClosed)))

end CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean
end HautevilleHouse
