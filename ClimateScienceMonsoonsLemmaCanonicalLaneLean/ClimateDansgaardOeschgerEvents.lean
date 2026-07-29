import ClimateScienceMonsoonsLemmaCanonicalLaneLean.IsotopicPaleothermometry

namespace HautevilleHouse
namespace ClimateScienceMonsoonsLemmaCanonicalLaneLean

structure DansgaardOeschgerEventsPackage {I : IsotopicPaleothermometryPackage}
    (P : IsotopicPaleothermometryPackage) where
  abruptWarmingEvents : Prop
  greenlandIceCoreRecord : Prop
  bipolarSeesawMechanism : Prop
  millennialScaleVariability : Prop

structure DansgaardOeschgerEventsEvidence {I : IsotopicPaleothermometryPackage}
    {P : IsotopicPaleothermometryPackage} (D : DansgaardOeschgerEventsPackage P) where
  abruptWarmingEventsClosed : D.abruptWarmingEvents
  greenlandIceCoreRecordClosed : D.greenlandIceCoreRecord
  bipolarSeesawMechanismClosed : D.bipolarSeesawMechanism
  millennialScaleVariabilityClosed : D.millennialScaleVariability

def DansgaardOeschgerEventsClosed {I : IsotopicPaleothermometryPackage}
    {P : IsotopicPaleothermometryPackage} (D : DansgaardOeschgerEventsPackage P) : Prop :=
  D.abruptWarmingEvents ∧ D.greenlandIceCoreRecord ∧
  D.bipolarSeesawMechanism ∧ D.millennialScaleVariability

theorem dansgaard_oeschger_events_closed_from_evidence
    {I : IsotopicPaleothermometryPackage} {P : IsotopicPaleothermometryPackage}
    (D : DansgaardOeschgerEventsPackage P) (E : DansgaardOeschgerEventsEvidence D) :
    DansgaardOeschgerEventsClosed D := by
  exact And.intro E.abruptWarmingEventsClosed
    (And.intro E.greenlandIceCoreRecordClosed
      (And.intro E.bipolarSeesawMechanismClosed E.millennialScaleVariabilityClosed))

end ClimateScienceMonsoonsLemmaCanonicalLaneLean
end HautevilleHouse