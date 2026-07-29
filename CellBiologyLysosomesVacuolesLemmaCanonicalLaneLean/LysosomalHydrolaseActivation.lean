import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean

structure LysosomalHydrolaseActivationPackage (A : AdmissibleClass) where
  acidificationEstablished : Prop
  proenzymeCleaved : Prop
  activeSiteExposed : Prop
  substrateCatalysisCompetent : Prop

structure LysosomalHydrolaseActivationEvidence {A : AdmissibleClass} (L : LysosomalHydrolaseActivationPackage A) where
  acidificationEstablishedClosed : L.acidificationEstablished
  proenzymeCleavedClosed : L.proenzymeCleaved
  activeSiteExposedClosed : L.activeSiteExposed
  substrateCatalysisCompetentClosed : L.substrateCatalysisCompetent

def LysosomalHydrolaseActivationClosed {A : AdmissibleClass} (L : LysosomalHydrolaseActivationPackage A) : Prop :=
  L.acidificationEstablished ∧ L.proenzymeCleaved ∧ L.activeSiteExposed ∧ L.substrateCatalysisCompetent

theorem lysosomal_hydrolase_activation_closed_from_evidence
    {A : AdmissibleClass} (L : LysosomalHydrolaseActivationPackage A) (E : LysosomalHydrolaseActivationEvidence L) :
    LysosomalHydrolaseActivationClosed L := by
  exact And.intro E.acidificationEstablishedClosed
    (And.intro E.proenzymeCleavedClosed
      (And.intro E.activeSiteExposedClosed E.substrateCatalysisCompetentClosed))

end CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean
end HautevilleHouse