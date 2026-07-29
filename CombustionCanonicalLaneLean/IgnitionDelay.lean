import CombustionCanonicalLaneLean.FlameletPDE

namespace HautevilleHouse
namespace CombustionCanonicalLaneLean

structure IgnitionDelayPackage {G : CombustorGeometryPackage} {F : FlameletPDEPackage G} where
  autoignitionTemperature : Prop
  inductionTime : Prop
  pressureThreshold : Prop
  mixtureFraction : Prop

structure IgnitionDelayEvidence {G : CombustorGeometryPackage} {F : FlameletPDEPackage G} (I : IgnitionDelayPackage F) where
  autoignitionTemperatureClosed : I.autoignitionTemperature
  inductionTimeClosed : I.inductionTime
  pressureThresholdClosed : I.pressureThreshold
  mixtureFractionClosed : I.mixtureFraction

def IgnitionDelayClosed {G : CombustorGeometryPackage} {F : FlameletPDEPackage G} (I : IgnitionDelayPackage F) : Prop :=
  I.autoignitionTemperature ∧ I.inductionTime ∧ I.pressureThreshold ∧ I.mixtureFraction

theorem ignition_delay_closed_from_evidence {G : CombustorGeometryPackage} {F : FlameletPDEPackage G} (I : IgnitionDelayPackage F) (E : IgnitionDelayEvidence I) : IgnitionDelayClosed I := by
  exact And.intro E.autoignitionTemperatureClosed (And.intro E.inductionTimeClosed (And.intro E.pressureThresholdClosed E.mixtureFractionClosed))

end CombustionCanonicalLaneLean
end HautevilleHouse