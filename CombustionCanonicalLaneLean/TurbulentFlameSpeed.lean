import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombustionCanonicalLaneLean

structure TurbulentFlameSpeedPackage where
  turbulentIntensity : Prop
  flameSpeedCorrelation : Prop
  wrinklingFactor : Prop
  quenchingDiameter : Prop

structure TurbulentFlameSpeedEvidence (T : TurbulentFlameSpeedPackage) where
  turbulentIntensityClosed : T.turbulentIntensity
  flameSpeedCorrelationClosed : T.flameSpeedCorrelation
  wrinklingFactorClosed : T.wrinklingFactor
  quenchingDiameterClosed : T.quenchingDiameter

def TurbulentFlameSpeedClosed (T : TurbulentFlameSpeedPackage) : Prop :=
  T.turbulentIntensity ∧ T.flameSpeedCorrelation ∧ T.wrinklingFactor ∧ T.quenchingDiameter

theorem turbulent_flame_speed_closed_from_evidence
    (T : TurbulentFlameSpeedPackage) (E : TurbulentFlameSpeedEvidence T) :
    TurbulentFlameSpeedClosed T := by
  exact And.intro E.turbulentIntensityClosed
    (And.intro E.flameSpeedCorrelationClosed
      (And.intro E.wrinklingFactorClosed E.quenchingDiameterClosed))

end CombustionCanonicalLaneLean
end HautevilleHouse