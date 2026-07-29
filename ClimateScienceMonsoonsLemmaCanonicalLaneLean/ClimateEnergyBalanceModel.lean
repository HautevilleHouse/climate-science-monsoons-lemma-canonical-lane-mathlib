import ClimateScienceMonsoonsLemmaCanonicalLaneLean.DansgaardOeschgerEvents

namespace HautevilleHouse
namespace ClimateScienceMonsoonsLemmaCanonicalLaneLean

structure EnergyBalanceModelPackage where
  solarInsolation : Type
  albedoFeedback : Prop
  greenhouseEffect : Prop
  radiativeEquilibrium : Prop
  surfaceTemperatureSolution : Prop

structure EnergyBalanceModelEvidence (E : EnergyBalanceModelPackage) where
  albedoFeedbackClosed : E.albedoFeedback
  greenhouseEffectClosed : E.greenhouseEffect
  radiativeEquilibriumClosed : E.radiativeEquilibrium
  surfaceTemperatureSolutionClosed : E.surfaceTemperatureSolution

def EnergyBalanceModelClosed (E : EnergyBalanceModelPackage) : Prop :=
  E.albedoFeedback ∧ E.greenhouseEffect ∧
  E.radiativeEquilibrium ∧ E.surfaceTemperatureSolution

theorem energy_balance_model_closed_from_evidence
    (E : EnergyBalanceModelPackage) (Ev : EnergyBalanceModelEvidence E) :
    EnergyBalanceModelClosed E := by
  exact And.intro Ev.albedoFeedbackClosed
    (And.intro Ev.greenhouseEffectClosed
      (And.intro Ev.radiativeEquilibriumClosed Ev.surfaceTemperatureSolutionClosed))

end ClimateScienceMonsoonsLemmaCanonicalLaneLean
end HautevilleHouse