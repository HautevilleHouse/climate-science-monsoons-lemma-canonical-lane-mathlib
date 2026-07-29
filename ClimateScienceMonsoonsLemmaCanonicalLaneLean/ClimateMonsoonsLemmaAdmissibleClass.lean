import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceMonsoonsLemmaCanonicalLaneLean

structure ClimateAdmissibleObject where
  dataset : Type
  paleoProxyRecords : Prop
  monsoonSystemIdentified : Prop
  milankovitchCycleCorrelation : Prop
  conclusion : milankovitchCycleCorrelation

structure AdmissibleClass where
  object : ClimateAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ClimateWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def ClimateWitnessClosed (O : ClimateAdmissibleObject) : Prop :=
  O.milankovitchCycleCorrelation

end ClimateScienceMonsoonsLemmaCanonicalLaneLean
end HautevilleHouse