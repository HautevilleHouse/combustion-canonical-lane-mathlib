import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombustionCanonicalLaneLean

structure CombustorGeometryPackage where
  chamberVolume : Prop
  inletArea : Prop
  flameHolderShape : Prop
  turbulenceIntensity : Prop

structure CombustorGeometryEvidence (G : CombustorGeometryPackage) where
  chamberVolumeClosed : G.chamberVolume
  inletAreaClosed : G.inletArea
  flameHolderShapeClosed : G.flameHolderShape
  turbulenceIntensityClosed : G.turbulenceIntensity

def CombustorGeometryClosed (G : CombustorGeometryPackage) : Prop :=
  G.chamberVolume ∧ G.inletArea ∧ G.flameHolderShape ∧ G.turbulenceIntensity

theorem combustor_geometry_closed_from_evidence (G : CombustorGeometryPackage) (E : CombustorGeometryEvidence G) : CombustorGeometryClosed G := by
  exact And.intro E.chamberVolumeClosed (And.intro E.inletAreaClosed (And.intro E.flameHolderShapeClosed E.turbulenceIntensityClosed))

end CombustionCanonicalLaneLean
end HautevilleHouse