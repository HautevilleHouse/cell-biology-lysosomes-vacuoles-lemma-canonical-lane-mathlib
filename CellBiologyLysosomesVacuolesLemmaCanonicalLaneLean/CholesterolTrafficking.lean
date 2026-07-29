import HautevilleHouse.CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean.LysosomalAcidification

namespace HautevilleHouse
namespace CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean

structure NPCProtein where
  npc1Functional : Prop
  npc2Functional : Prop
  cholesterolBinding : Prop

def cholesterolExportCompetent (n : NPCProtein) : Prop :=
  n.npc1Functional ∧ n.npc2Functional ∧ n.cholesterolBinding

structure LDLReceptor where
  receptorMediatedEndocytosis : Prop
  lysosomalDelivery : Prop

def ldlProcessing (l : LDLReceptor) : Prop :=
  l.receptorMediatedEndocytosis ∧ l.lysosomalDelivery

theorem cholesterol_bridge (n : NPCProtein) : cholesterolExportCompetent n :=
  And.intro n.npc1Functional (And.intro n.npc2Functional n.cholesterolBinding)

end CellBiologyLysosomesVacuolesLemmaCanonicalLaneLean
end HautevilleHouse
