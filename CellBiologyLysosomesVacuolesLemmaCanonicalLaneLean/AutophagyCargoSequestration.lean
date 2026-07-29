import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean

structure AutophagyCargoSequestrationPackage (A : AdmissibleClass) where
  phagophoreAssembly : Prop
  cargoRecognition : Prop
  membraneElongation : Prop
  vesicleCompletion : Prop

structure AutophagyCargoSequestrationEvidence {A : AdmissibleClass} (Ac : AutophagyCargoSequestrationPackage A) where
  phagophoreAssemblyClosed : Ac.phagophoreAssembly
  cargoRecognitionClosed : Ac.cargoRecognition
  membraneElongationClosed : Ac.membraneElongation
  vesicleCompletionClosed : Ac.vesicleCompletion

def AutophagyCargoSequestrationClosed {A : AdmissibleClass} (Ac : AutophagyCargoSequestrationPackage A) : Prop :=
  Ac.phagophoreAssembly ∧ Ac.cargoRecognition ∧ Ac.membraneElongation ∧ Ac.vesicleCompletion

theorem autophagy_cargo_sequestration_closed_from_evidence
    {A : AdmissibleClass} (Ac : AutophagyCargoSequestrationPackage A) (E : AutophagyCargoSequestrationEvidence Ac) :
    AutophagyCargoSequestrationClosed Ac := by
  exact And.intro E.phagophoreAssemblyClosed
    (And.intro E.cargoRecognitionClosed
      (And.intro E.membraneElongationClosed E.vesicleCompletionClosed))

end CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean
end HautevilleHouse