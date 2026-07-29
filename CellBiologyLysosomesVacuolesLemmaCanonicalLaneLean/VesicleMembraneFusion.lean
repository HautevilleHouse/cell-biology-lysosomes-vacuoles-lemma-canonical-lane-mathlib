import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean

structure VesicleMembraneFusionPackage (A : AdmissibleClass) where
  snareComplexFormation : Prop
  membraneDocking : Prop
  lipidBilayerMerged : Prop
  lumenContentsMixed : Prop

structure VesicleMembraneFusionEvidence {A : AdmissibleClass} (V : VesicleMembraneFusionPackage A) where
  snareComplexFormationClosed : V.snareComplexFormation
  membraneDockingClosed : V.membraneDocking
  lipidBilayerMergedClosed : V.lipidBilayerMerged
  lumenContentsMixedClosed : V.lumenContentsMixed

def VesicleMembraneFusionClosed {A : AdmissibleClass} (V : VesicleMembraneFusionPackage A) : Prop :=
  V.snareComplexFormation ∧ V.membraneDocking ∧ V.lipidBilayerMerged ∧ V.lumenContentsMixed

theorem vesicle_membrane_fusion_closed_from_evidence
    {A : AdmissibleClass} (V : VesicleMembraneFusionPackage A) (E : VesicleMembraneFusionEvidence V) :
    VesicleMembraneFusionClosed V := by
  exact And.intro E.snareComplexFormationClosed
    (And.intro E.membraneDockingClosed
      (And.intro E.lipidBilayerMergedClosed E.lumenContentsMixedClosed))

end CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean
end HautevilleHouse