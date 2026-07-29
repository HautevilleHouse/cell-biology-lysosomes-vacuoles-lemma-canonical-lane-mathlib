import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean

structure LysosomalEnzymeActivationPackage where
  mannose6PhosphateTagging : Prop
  golgiSorting : Prop
  proenzymeCleavage : Prop
  pHDependentActivity : Prop

structure LysosomalEnzymeActivationEvidence (P : LysosomalEnzymeActivationPackage) where
  mannose6PhosphateTaggingClosed : P.mannose6PhosphateTagging
  golgiSortingClosed : P.golgiSorting
  proenzymeCleavageClosed : P.proenzymeCleavage
  pHDependentActivityClosed : P.pHDependentActivity

def LysosomalEnzymeActivationClosed (P : LysosomalEnzymeActivationPackage) : Prop :=
  P.mannose6PhosphateTagging ∧ P.golgiSorting ∧ P.proenzymeCleavage ∧ P.pHDependentActivity

theorem lysosomal_enzyme_activation_closed_from_evidence (P : LysosomalEnzymeActivationPackage) (E : LysosomalEnzymeActivationEvidence P) : LysosomalEnzymeActivationClosed P := by
  exact And.intro E.mannose6PhosphateTaggingClosed (And.intro E.golgiSortingClosed (And.intro E.proenzymeCleavageClosed E.pHDependentActivityClosed))

end CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean
end HautevilleHouse
