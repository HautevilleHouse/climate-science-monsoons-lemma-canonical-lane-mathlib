import ClimateScienceMonsoonsLemmaCanonicalLaneLean.EnergyBalanceModel

namespace HautevilleHouse
namespace ClimateScienceMonsoonsLemmaCanonicalLaneLean

structure MonsoonsLemmaPackage (E : EnergyBalanceModelPackage) where
  seasonalInsolationGradient : Prop
  landSeaTemperatureContrast : Prop
  monsoonPrecipitationPattern : Prop
  paleoMonsoonValidation : Prop

structure MonsoonsLemmaEvidence {E : EnergyBalanceModelPackage}
    (M : MonsoonsLemmaPackage E) where
  seasonalInsolationGradientClosed : M.seasonalInsolationGradient
  landSeaTemperatureContrastClosed : M.landSeaTemperatureContrast
  monsoonPrecipitationPatternClosed : M.monsoonPrecipitationPattern
  paleoMonsoonValidationClosed : M.paleoMonsoonValidation

def MonsoonsLemmaClosed {E : EnergyBalanceModelPackage}
    (M : MonsoonsLemmaPackage E) : Prop :=
  M.seasonalInsolationGradient ∧ M.landSeaTemperatureContrast ∧
  M.monsoonPrecipitationPattern ∧ M.paleoMonsoonValidation

theorem monsoons_lemma_closed_from_evidence
    {E : EnergyBalanceModelPackage} (M : MonsoonsLemmaPackage E)
    (Ev : MonsoonsLemmaEvidence M) : MonsoonsLemmaClosed M := by
  exact And.intro Ev.seasonalInsolationGradientClosed
    (And.intro Ev.landSeaTemperatureContrastClosed
      (And.intro Ev.monsoonPrecipitationPatternClosed Ev.paleoMonsoonValidationClosed))

end ClimateScienceMonsoonsLemmaCanonicalLaneLean
end HautevilleHouse