import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceMonsoonsLemmaCanonicalLaneLean

structure EnergyBalanceModel where
  solarConstant : ℝ
  albedo : ℝ
  greenhouseFactor : ℝ
  heatCapacity : ℝ
  temperatureAnomaly : ℝ
  equilibriumTemperature : ℝ
  radiativeForcing : ℝ
  feedbackParameter : ℝ
  modelCalibrated : Prop
  modelCalibratedTerm : modelCalibrated

def EnergyBalanceModelClosed (M : EnergyBalanceModel) : Prop :=
  M.modelCalibrated

theorem energy_balance_model_closed (M : EnergyBalanceModel) : EnergyBalanceModelClosed M :=
  M.modelCalibratedTerm

end ClimateScienceMonsoonsLemmaCanonicalLaneLean
end HautevilleHouse
