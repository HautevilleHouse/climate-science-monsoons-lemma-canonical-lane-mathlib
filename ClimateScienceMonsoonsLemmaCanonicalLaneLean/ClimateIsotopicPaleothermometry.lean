import ClimateScienceMonsoonsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceMonsoonsLemmaCanonicalLaneLean

structure IsotopicPaleothermometryPackage where
  oxygenIsotopeRatio : Type
  temperatureCalibration : Prop
  seaSurfaceTemperatureReconstruction : Prop
  glacialInterglacialCycle : Prop

structure IsotopicPaleothermometryEvidence (I : IsotopicPaleothermometryPackage) where
  temperatureCalibrationClosed : I.temperatureCalibration
  seaSurfaceTemperatureReconstructionClosed : I.seaSurfaceTemperatureReconstruction
  glacialInterglacialCycleClosed : I.glacialInterglacialCycle

def IsotopicPaleothermometryClosed (I : IsotopicPaleothermometryPackage) : Prop :=
  I.temperatureCalibration ∧ I.seaSurfaceTemperatureReconstruction ∧ I.glacialInterglacialCycle

theorem isotopic_paleothermometry_closed_from_evidence
    (I : IsotopicPaleothermometryPackage) (E : IsotopicPaleothermometryEvidence I) :
    IsotopicPaleothermometryClosed I := by
  exact And.intro E.temperatureCalibrationClosed
    (And.intro E.seaSurfaceTemperatureReconstructionClosed E.glacialInterglacialCycleClosed)

end ClimateScienceMonsoonsLemmaCanonicalLaneLean
end HautevilleHouse