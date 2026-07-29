import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean

structure VacuolarATPasePackage where
  protonPump : Type u
  atpHydrolysis : Prop
  protonTranslocation : Prop
  electrochemicalGradient : Prop
  organelleAcidification : Prop
  v0v1DomainArchitecture : Prop

structure VacuolarATPaseEvidence (V : VacuolarATPasePackage) where
  atpHydrolysisClosed : V.atpHydrolysis
  protonTranslocationClosed : V.protonTranslocation
  electrochemicalGradientClosed : V.electrochemicalGradient
  organelleAcidificationClosed : V.organelleAcidification
  v0v1DomainArchitectureClosed : V.v0v1DomainArchitecture

def VacuolarATPaseClosed (V : VacuolarATPasePackage) : Prop :=
  V.atpHydrolysis ∧ V.protonTranslocation ∧ V.electrochemicalGradient ∧
  V.organelleAcidification ∧ V.v0v1DomainArchitecture

theorem vacuolar_atpase_closed_from_evidence (V : VacuolarATPasePackage)
    (E : VacuolarATPaseEvidence V) : VacuolarATPaseClosed V := by
  exact And.intro E.atpHydrolysisClosed
    (And.intro E.protonTranslocationClosed
      (And.intro E.electrochemicalGradientClosed
        (And.intro E.organelleAcidificationClosed E.v0v1DomainArchitectureClosed)))

end CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean
end HautevilleHouse