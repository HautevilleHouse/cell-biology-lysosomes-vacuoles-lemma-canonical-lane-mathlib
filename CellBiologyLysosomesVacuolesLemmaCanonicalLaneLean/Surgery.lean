import HautevilleHouse.CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean.GateLemmas
import HautevilleHouse.CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean.LysosomeVacuolePackage

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure LysosomeVacuoleAdmittedObject where
  cell : Type
  lysosome : Type
  vacuole : Type
  lysosomeFunction : Prop
  vacuoleFunction : Prop
  fusionCompetence : Prop
  pHRegulation : Prop
  hydrolysisCapacity : Prop
  autophagyFlux : Prop
  conclusion : hydrolysisCapacity ∧ autophagyFlux

def LysosomeVacuoleWitnessClosed (O : LysosomeVacuoleAdmittedObject) : Prop :=
  O.hydrolysisCapacity ∧ O.autophagyFlux

end HautevilleHouse.CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean
end HautevilleHouse