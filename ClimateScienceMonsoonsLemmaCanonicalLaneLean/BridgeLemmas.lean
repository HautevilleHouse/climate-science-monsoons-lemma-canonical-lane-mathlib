import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceMonsoonsLemmaCanonicalLaneLean

def bridgeClosed (A : ClimaticAdmissibleClass) : Prop :=
  ClimaticWitnessClosed A.object

theorem bridge_from_admissible_class (A : ClimaticAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClimateScienceMonsoonsLemmaCanonicalLaneLean
end HautevilleHouse