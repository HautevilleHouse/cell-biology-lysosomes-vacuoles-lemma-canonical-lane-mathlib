import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean

structure LysosomeAcidificationPackage where
  vATPaseActivity : Prop
  protonPumpFunction : Prop
  lumenalpH : Prop
  acidHydrolaseActivation : Prop

structure LysosomeAcidificationEvidence (P : LysosomeAcidificationPackage) where
  vATPaseActivityClosed : P.vATPaseActivity
  protonPumpFunctionClosed : P.protonPumpFunction
  lumenalpHClosed : P.lumenalpH
  acidHydrolaseActivationClosed : P.acidHydrolaseActivation

def LysosomeAcidificationClosed (P : LysosomeAcidificationPackage) : Prop :=
  P.vATPaseActivity ∧ P.protonPumpFunction ∧ P.lumenalpH ∧ P.acidHydrolaseActivation

theorem lysosome_acidification_closed_from_evidence (P : LysosomeAcidificationPackage) (E : LysosomeAcidificationEvidence P) : LysosomeAcidificationClosed P := by
  exact And.intro E.vATPaseActivityClosed (And.intro E.protonPumpFunctionClosed (And.intro E.lumenalpHClosed E.acidHydrolaseActivationClosed))

end CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean
end HautevilleHouse
