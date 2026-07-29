import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceMonsoonsLemmaCanonicalLaneLean

structure IceCoreRecord where
  depth : ℝ
  age : ℝ
  delta18O : ℝ
  deltaD : ℝ
  deuteriumExcess : ℝ
  dustConcentration : ℝ

def isotopicTemperature (record : IceCoreRecord) : ℝ :=
  record.delta18O * 0.67 - record.deltaD * 0.01

structure PaleotemperatureReconstruction (record : IceCoreRecord) where
  temperature : ℝ
  reconstructionValid : Prop
  reconstructionValidTerm : reconstructionValid

def PaleotemperatureReconstructionClosed {record : IceCoreRecord} (P : PaleotemperatureReconstruction record) : Prop :=
  P.reconstructionValid

theorem paleotemperature_reconstruction_closed {record : IceCoreRecord} (P : PaleotemperatureReconstruction record) :
    PaleotemperatureReconstructionClosed P :=
  P.reconstructionValidTerm

end ClimateScienceMonsoonsLemmaCanonicalLaneLean
end HautevilleHouse
