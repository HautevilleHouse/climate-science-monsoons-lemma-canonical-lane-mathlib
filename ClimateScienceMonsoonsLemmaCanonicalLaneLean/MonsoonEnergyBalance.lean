import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceMonsoonsLemmaCanonicalLaneLean

structure MonsoonEnergyBalancePackage where
  oceanHeatContent : ℝ
  landTemperature : ℝ
  monsoonCirculation : ℝ
  energyEquation : oceanHeatContent = landTemperature * monsoonCirculation

structure MonsoonEnergyBalanceEvidence (M : MonsoonEnergyBalancePackage) where
  oceanHeatContentClosed : M.oceanHeatContent = M.landTemperature * M.monsoonCirculation

def MonsoonEnergyBalanceClosed (M : MonsoonEnergyBalancePackage) : Prop :=
  M.oceanHeatContent = M.landTemperature * M.monsoonCirculation

theorem monsoon_energy_balance_closed_from_evidence
    (M : MonsoonEnergyBalancePackage) (E : MonsoonEnergyBalanceEvidence M) :
    MonsoonEnergyBalanceClosed M := by
  exact E.oceanHeatContentClosed

end ClimateScienceMonsoonsLemmaCanonicalLaneLean
end HautevilleHouse