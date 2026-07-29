import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean

structure VATPaseProtonPumpPackage where
  pumpComplex : String
  atpHydrolysis : Prop
  protonTranslocation : Prop
  lumenalAcidification : Prop
  subunitRotation : Prop

structure VATPaseProtonPumpEvidence (V : VATPaseProtonPumpPackage) where
  atpHydrolysisClosed : V.atpHydrolysis
  protonTranslocationClosed : V.protonTranslocation
  lumenalAcidificationClosed : V.lumenalAcidification
  subunitRotationClosed : V.subunitRotation

def VATPaseProtonPumpClosed (V : VATPaseProtonPumpPackage) : Prop :=
  V.atpHydrolysis ∧ V.protonTranslocation ∧ V.lumenalAcidification ∧ V.subunitRotation

theorem v_atpase_proton_pump_closed_from_evidence
    (V : VATPaseProtonPumpPackage) (E : VATPaseProtonPumpEvidence V) :
    VATPaseProtonPumpClosed V := by
  exact And.intro E.atpHydrolysisClosed
    (And.intro E.protonTranslocationClosed
      (And.intro E.lumenalAcidificationClosed E.subunitRotationClosed))

end CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean
end HautevilleHouse
