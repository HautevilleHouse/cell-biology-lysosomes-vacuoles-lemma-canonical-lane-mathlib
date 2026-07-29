import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean

structure MembraneTraffickingPathwayPackage (A : AdmissibleClass) where
  vesicleBudding : Prop
  cytoskeletalTransport : Prop
  tetheringDocking : Prop
  fusionCompetence : Prop

structure MembraneTraffickingPathwayEvidence {A : AdmissibleClass} (M : MembraneTraffickingPathwayPackage A) where
  vesicleBuddingClosed : M.vesicleBudding
  cytoskeletalTransportClosed : M.cytoskeletalTransport
  tetheringDockingClosed : M.tetheringDocking
  fusionCompetenceClosed : M.fusionCompetence

def MembraneTraffickingPathwayClosed {A : AdmissibleClass} (M : MembraneTraffickingPathwayPackage A) : Prop :=
  M.vesicleBudding ∧ M.cytoskeletalTransport ∧ M.tetheringDocking ∧ M.fusionCompetence

theorem membrane_trafficking_pathway_closed_from_evidence
    {A : AdmissibleClass} (M : MembraneTraffickingPathwayPackage A) (E : MembraneTraffickingPathwayEvidence M) :
    MembraneTraffickingPathwayClosed M := by
  exact And.intro E.vesicleBuddingClosed
    (And.intro E.cytoskeletalTransportClosed
      (And.intro E.tetheringDockingClosed E.fusionCompetenceClosed))

end CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean
end HautevilleHouse