import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClimateScienceMonsoonsLemmaCanonicalLaneLean.MonsoonSystemConvergence

namespace HautevilleHouse
namespace ClimateScienceMonsoonsLemmaCanonicalLaneLean

def ConstrainedMonsoonClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_monsoon_endgame (A : AdmissibleClass) : ConstrainedMonsoonClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClimateScienceMonsoonsLemmaCanonicalLaneLean
end HautevilleHouse