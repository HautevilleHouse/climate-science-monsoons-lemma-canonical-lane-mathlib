import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceMonsoonsLemmaCanonicalLaneLean

structure ClimateEvent where
  onsetAge : ℝ
  duration : ℝ
  temperatureChange : ℝ
  abruptOnset : Prop
  abruptOnsetTerm : abruptOnset

def ClimateEventClosed (E : ClimateEvent) : Prop :=
  E.abruptOnset

theorem climate_event_closed (E : ClimateEvent) : ClimateEventClosed E :=
  E.abruptOnsetTerm

structure DansgaardOeschgerSequence where
  events : List ClimateEvent
  eventsClosed : All ClimateEventClosed events

def DansgaardOeschgerSequenceClosed (D : DansgaardOeschgerSequence) : Prop :=
  D.eventsClosed

theorem dansgaard_oeschger_sequence_closed (D : DansgaardOeschgerSequence) :
    DansgaardOeschgerSequenceClosed D :=
  D.eventsClosed

end ClimateScienceMonsoonsLemmaCanonicalLaneLean
end HautevilleHouse
