import HautevilleHouse.ClimateScienceMonsoonsLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ClimateScienceMonsoonsLemmaCanonicalLaneLean

def gateClosed (A : ClimaticAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : ClimaticAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ClimateScienceMonsoonsLemmaCanonicalLaneLean
end HautevilleHouse