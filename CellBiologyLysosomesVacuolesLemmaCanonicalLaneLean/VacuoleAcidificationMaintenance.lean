import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean

structure VacuoleAcidificationMaintenancePackage (A : AdmissibleClass) where
  vATPasePumping : Prop
  protonLeakCompensated : Prop
  pHGradientStable : Prop
  luminalBufferCapacity : Prop

structure VacuoleAcidificationMaintenanceEvidence {A : AdmissibleClass} (V : VacuoleAcidificationMaintenancePackage A) where
  vATPasePumpingClosed : V.vATPasePumping
  protonLeakCompensatedClosed : V.protonLeakCompensated
  pHGradientStableClosed : V.pHGradientStable
  luminalBufferCapacityClosed : V.luminalBufferCapacity

def VacuoleAcidificationMaintenanceClosed {A : AdmissibleClass} (V : VacuoleAcidificationMaintenancePackage A) : Prop :=
  V.vATPasePumping ∧ V.protonLeakCompensated ∧ V.pHGradientStable ∧ V.luminalBufferCapacity

theorem vacuole_acidification_maintenance_closed_from_evidence
    {A : AdmissibleClass} (V : VacuoleAcidificationMaintenancePackage A) (E : VacuoleAcidificationMaintenanceEvidence V) :
    VacuoleAcidificationMaintenanceClosed V := by
  exact And.intro E.vATPasePumpingClosed
    (And.intro E.protonLeakCompensatedClosed
      (And.intro E.pHGradientStableClosed E.luminalBufferCapacityClosed))

end CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean
end HautevilleHouse