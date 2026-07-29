import CombustionCanonicalLaneLean.IgnitionDelay

namespace HautevilleHouse
namespace CombustionCanonicalLaneLean

structure FlamePropagationPackage {G : CombustorGeometryPackage} {F : FlameletPDEPackage G} {I : IgnitionDelayPackage F} where
  laminarFlameSpeed : Prop
  flameStretchCurvature : Prop
  quenchingDistance : Prop
  flameInstability : Prop

structure FlamePropagationEvidence {G : CombustorGeometryPackage} {F : FlameletPDEPackage G} {I : IgnitionDelayPackage F} (P : FlamePropagationPackage I) where
  laminarFlameSpeedClosed : P.laminarFlameSpeed
  flameStretchCurvatureClosed : P.flameStretchCurvature
  quenchingDistanceClosed : P.quenchingDistance
  flameInstabilityClosed : P.flameInstability

def FlamePropagationClosed {G : CombustorGeometryPackage} {F : FlameletPDEPackage G} {I : IgnitionDelayPackage F} (P : FlamePropagationPackage I) : Prop :=
  P.laminarFlameSpeed ∧ P.flameStretchCurvature ∧ P.quenchingDistance ∧ P.flameInstability

theorem flame_propagation_closed_from_evidence {G : CombustorGeometryPackage} {F : FlameletPDEPackage G} {I : IgnitionDelayPackage F} (P : FlamePropagationPackage I) (E : FlamePropagationEvidence P) : FlamePropagationClosed P := by
  exact And.intro E.laminarFlameSpeedClosed (And.intro E.flameStretchCurvatureClosed (And.intro E.quenchingDistanceClosed E.flameInstabilityClosed))

end CombustionCanonicalLaneLean
end HautevilleHouse