import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceMonsoonsLemmaCanonicalLaneLean

structure GreenhouseEffectPackage where
  co2Concentration : ℝ
  solarConstant : ℝ
  temperature : ℝ
  radiativeForcing : ℝ
  feedbackAmplification : ℝ
  temperatureFromForcing : radiativeForcing = solarConstant * co2Concentration → temperature = radiativeForcing + feedbackAmplification

structure GreenhouseEffectEvidence (G : GreenhouseEffectPackage) where
  radiativeForcingClosed : G.radiativeForcing = G.solarConstant * G.co2Concentration
  temperatureClosed : G.temperature = G.radiativeForcing + G.feedbackAmplification

def GreenhouseEffectClosed (G : GreenhouseEffectPackage) : Prop :=
  G.radiativeForcing = G.solarConstant * G.co2Concentration ∧
  G.temperature = G.radiativeForcing + G.feedbackAmplification

theorem greenhouse_effect_closed_from_evidence
    (G : GreenhouseEffectPackage) (E : GreenhouseEffectEvidence G) :
    GreenhouseEffectClosed G := by
  exact And.intro E.radiativeForcingClosed E.temperatureClosed

end ClimateScienceMonsoonsLemmaCanonicalLaneLean
end HautevilleHouse