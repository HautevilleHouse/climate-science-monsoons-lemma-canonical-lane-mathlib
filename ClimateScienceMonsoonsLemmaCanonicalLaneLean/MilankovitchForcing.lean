import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceMonsoonsLemmaCanonicalLaneLean

structure MilankovitchForcingPackage where
  eccentricity : ℝ
  obliquity : ℝ
  precession : ℝ
  insolationAnomaly : ℝ
  forcingEquation : insolationAnomaly = eccentricity * obliquity + precession

structure MilankovitchForcingEvidence (M : MilankovitchForcingPackage) where
  forcingEquationClosed : M.insolationAnomaly = M.eccentricity * M.obliquity + M.precession

def MilankovitchForcingClosed (M : MilankovitchForcingPackage) : Prop :=
  M.insolationAnomaly = M.eccentricity * M.obliquity + M.precession

theorem milankovitch_forcing_closed_from_evidence
    (M : MilankovitchForcingPackage) (E : MilankovitchForcingEvidence M) :
    MilankovitchForcingClosed M := by
  exact E.forcingEquationClosed

end ClimateScienceMonsoonsLemmaCanonicalLaneLean
end HautevilleHouse