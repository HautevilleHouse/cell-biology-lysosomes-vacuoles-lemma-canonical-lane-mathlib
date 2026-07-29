import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean

structure LysosomeAcidHydrolasePackage where
  enzymeName : String
  substrate : String
  optimalPH : Float
  hydrolyticActivity : Prop
  activityAtLysosomalPH : Prop

structure LysosomeAcidHydrolaseEvidence (L : LysosomeAcidHydrolasePackage) where
  hydrolyticActivityClosed : L.hydrolyticActivity
  activityAtLysosomalPHClosed : L.activityAtLysosomalPH

def LysosomeAcidHydrolaseClosed (L : LysosomeAcidHydrolasePackage) : Prop :=
  L.hydrolyticActivity ∧ L.activityAtLysosomalPH

theorem lysosome_acid_hydrolase_closed_from_evidence (L : LysosomeAcidHydrolasePackage)
    (E : LysosomeAcidHydrolaseEvidence L) : LysosomeAcidHydrolaseClosed L := by
  exact And.intro E.hydrolyticActivityClosed E.activityAtLysosomalPHClosed

end CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean
end HautevilleHouse
