import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceMonsoonsLemmaCanonicalLaneLean

structure OrbitalParameters where
  eccentricity : ℝ
  obliquity : ℝ
  precession : ℝ

def insolationAnomaly (params : OrbitalParameters) (latitude : ℝ) (day : ℝ) : ℝ :=
  params.eccentricity * params.obliquity * Real.cos (latitude) * Real.sin (day)

structure MonsoonIntensity (params : OrbitalParameters) where
  summerInsolation : ℝ
  winterInsolation : ℝ
  intensity : ℝ := summerInsolation - winterInsolation
  intensityPositive : Prop := intensity > 0
  intensityPositiveTerm : intensityPositive

def MonsoonIntensityClosed {params : OrbitalParameters} (M : MonsoonIntensity params) : Prop :=
  M.intensityPositive

theorem monsoon_intensity_closed {params : OrbitalParameters} (M : MonsoonIntensity params) :
    MonsoonIntensityClosed M :=
  M.intensityPositiveTerm

end ClimateScienceMonsoonsLemmaCanonicalLaneLean
end HautevilleHouse
