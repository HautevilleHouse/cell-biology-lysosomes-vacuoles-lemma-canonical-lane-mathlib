import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean

structure AutophagosomeFormation where
  initiationComplex : Prop
  membraneElongation : Prop
  cargoSequestration : Prop
  closureCompleted : Prop

structure AutophagyLysosomeFusionPackage where
  autophagosomeFormation : AutophagosomeFormation
  lysosomeAcidHydrolasePresent : Prop
  fusionMachineryActive : Prop
  autophagicCargoDegraded : Prop

structure AutophagyLysosomeFusionEvidence (A : AutophagyLysosomeFusionPackage) where
  autophagosomeFormationClosed : A.autophagosomeFormation.initiationComplex ∧ A.autophagosomeFormation.membraneElongation ∧ A.autophagosomeFormation.cargoSequestration ∧ A.autophagosomeFormation.closureCompleted
  lysosomeAcidHydrolasePresentClosed : A.lysosomeAcidHydrolasePresent
  fusionMachineryActiveClosed : A.fusionMachineryActive
  autophagicCargoDegradedClosed : A.autophagicCargoDegraded

def AutophagyLysosomeFusionClosed (A : AutophagyLysosomeFusionPackage) : Prop :=
  (A.autophagosomeFormation.initiationComplex ∧ A.autophagosomeFormation.membraneElongation ∧
   A.autophagosomeFormation.cargoSequestration ∧ A.autophagosomeFormation.closureCompleted) ∧
  A.lysosomeAcidHydrolasePresent ∧ A.fusionMachineryActive ∧ A.autophagicCargoDegraded

theorem autophagy_lysosome_fusion_closed_from_evidence
    (A : AutophagyLysosomeFusionPackage) (E : AutophagyLysosomeFusionEvidence A) :
    AutophagyLysosomeFusionClosed A := by
  exact And.intro E.autophagosomeFormationClosed
    (And.intro E.lysosomeAcidHydrolasePresentClosed
      (And.intro E.fusionMachineryActiveClosed E.autophagicCargoDegradedClosed))

end CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean
end HautevilleHouse
