import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceMonsoonsLemmaCanonicalLaneLean

structure ClimaticAdmissibleClass where
  object : ClimaticAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : ClimaticAdmissibleClass) : Prop :=
  ClimaticWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClimateScienceMonsoonsLemmaCanonicalLaneLean
end HautevilleHouse