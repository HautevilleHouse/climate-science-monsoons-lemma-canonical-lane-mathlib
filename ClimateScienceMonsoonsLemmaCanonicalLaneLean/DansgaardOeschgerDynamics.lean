import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceMonsoonsLemmaCanonicalLaneLean

structure DansgaardOeschgerDynamicsPackage where
  iceCoreProxy : ℝ
  temperatureAnomaly : ℝ
  threshold : ℝ
  eventTriggered : Prop
  dynamicsEquation : temperatureAnomaly > threshold → eventTriggered

structure DansgaardOeschgerDynamicsEvidence (D : DansgaardOeschgerDynamicsPackage) where
  eventTriggeredClosed : D.temperatureAnomaly > D.threshold → D.eventTriggered

def DansgaardOeschgerDynamicsClosed (D : DansgaardOeschgerDynamicsPackage) : Prop :=
  D.temperatureAnomaly > D.threshold → D.eventTriggered

theorem dansgaard_oeschger_dynamics_closed_from_evidence
    (D : DansgaardOeschgerDynamicsPackage) (E : DansgaardOeschgerDynamicsEvidence D) :
    DansgaardOeschgerDynamicsClosed D := by
  exact E.eventTriggeredClosed

end ClimateScienceMonsoonsLemmaCanonicalLaneLean
end HautevilleHouse