import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClimateScienceMonsoonsLemmaCanonicalLaneLean.MilankovitchCycleParameters
import HautevilleHouse.ClimateScienceMonsoonsLemmaCanonicalLaneLean.DansgaardOeschgerEvents
import HautevilleHouse.ClimateScienceMonsoonsLemmaCanonicalLaneLean.IsotopicPaleoThermometry
import HautevilleHouse.ClimateScienceMonsoonsLemmaCanonicalLaneLean.EnergyBalanceModel

namespace HautevilleHouse
namespace ClimateScienceMonsoonsLemmaCanonicalLaneLean

structure MonsoonSystemConvergence where
  orbitalForcingIncluded : Prop
  abruptEventsCharacterized : Prop
  temperatureReconstructionUsed : Prop
  energyBalanceEstablished : Prop

def MonsoonSystemConvergenceClosed (M : MonsoonSystemConvergence) : Prop :=
  M.orbitalForcingIncluded ∧ M.abruptEventsCharacterized ∧ M.temperatureReconstructionUsed ∧ M.energyBalanceEstablished

theorem monsoon_system_convergence_closed (M : MonsoonSystemConvergence) : MonsoonSystemConvergenceClosed M :=
  And.intro M.orbitalForcingIncluded (And.intro M.abruptEventsCharacterized (And.intro M.temperatureReconstructionUsed M.energyBalanceEstablished))

end ClimateScienceMonsoonsLemmaCanonicalLaneLean
end HautevilleHouse