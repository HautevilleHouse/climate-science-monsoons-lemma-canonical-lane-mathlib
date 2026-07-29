import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceMonsoonsLemmaCanonicalLaneLean

structure MilankovitchCycleParameters where
  orbitalEccentricity : Prop
  axialTilt : Prop
  precession : Prop
  insolationAnomaly : Prop
  eccentricityClosed : orbitalEccentricity
  tiltClosed : axialTilt
  precessionClosed : precession
  insolationClosed : insolationAnomaly

structure MilankovitchCycleEvidence (M : MilankovitchCycleParameters) where
  eccentricityClosed : M.orbitalEccentricity
  tiltClosed : M.axialTilt
  precessionClosed : M.precession
  insolationClosed : M.insolationAnomaly

def MilankovitchCycleClosed (M : MilankovitchCycleParameters) : Prop :=
  M.orbitalEccentricity ∧ M.axialTilt ∧ M.precession ∧ M.insolationAnomaly

theorem milankovitch_cycle_closed_from_evidence (M : MilankovitchCycleParameters) (E : MilankovitchCycleEvidence M) : MilankovitchCycleClosed M := by
  exact And.intro E.eccentricityClosed (And.intro E.tiltClosed (And.intro E.precessionClosed E.insolationClosed))

end ClimateScienceMonsoonsLemmaCanonicalLaneLean
end HautevilleHouse