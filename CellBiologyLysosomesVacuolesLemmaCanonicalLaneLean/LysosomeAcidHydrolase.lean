import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean

structure AcidHydrolasePackage where
  enzyme : Type u
  optimalPH : Type v
  hydrolaseActivity : Prop
  substrateSpecificity : Prop
  acidDependentActivation : Prop

structure AcidHydrolaseEvidence (A : AcidHydrolasePackage) where
  hydrolaseActivityClosed : A.hydrolaseActivity
  substrateSpecificityClosed : A.substrateSpecificity
  acidDependentActivationClosed : A.acidDependentActivation

def AcidHydrolaseClosed (A : AcidHydrolasePackage) : Prop :=
  A.hydrolaseActivity ∧ A.substrateSpecificity ∧ A.acidDependentActivation

theorem acid_hydrolase_closed_from_evidence (A : AcidHydrolasePackage)
    (E : AcidHydrolaseEvidence A) : AcidHydrolaseClosed A := by
  exact And.intro E.hydrolaseActivityClosed
    (And.intro E.substrateSpecificityClosed E.acidDependentActivationClosed)

end CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean
end HautevilleHouse