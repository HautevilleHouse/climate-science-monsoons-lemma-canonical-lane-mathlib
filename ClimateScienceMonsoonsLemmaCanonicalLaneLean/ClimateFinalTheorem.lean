import ClimateScienceMonsoonsLemmaCanonicalLaneLean.ClimateGateLemmas

namespace HautevilleHouse
namespace ClimateScienceMonsoonsLemmaCanonicalLaneLean

def ConstrainedClimateMonsoonsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_climate_monsoons_endgame (A : AdmissibleClass) :
    ConstrainedClimateMonsoonsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClimateScienceMonsoonsLemmaCanonicalLaneLean
end HautevilleHouse