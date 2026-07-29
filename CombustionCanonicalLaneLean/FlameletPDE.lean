import CombustionCanonicalLaneLean.CombustorGeometry

namespace HautevilleHouse
namespace CombustionCanonicalLaneLean

structure FlameletPDEPackage (G : CombustorGeometryPackage) where
  speciesTransport : Prop
  energyEquation : Prop
  reactionRates : Prop
  boundaryConditions : Prop

structure FlameletPDEEvidence {G : CombustorGeometryPackage} (F : FlameletPDEPackage G) where
  speciesTransportClosed : F.speciesTransport
  energyEquationClosed : F.energyEquation
  reactionRatesClosed : F.reactionRates
  boundaryConditionsClosed : F.boundaryConditions

def FlameletPDEClosed {G : CombustorGeometryPackage} (F : FlameletPDEPackage G) : Prop :=
  F.speciesTransport ∧ F.energyEquation ∧ F.reactionRates ∧ F.boundaryConditions

theorem flamelet_pde_closed_from_evidence {G : CombustorGeometryPackage} (F : FlameletPDEPackage G) (E : FlameletPDEEvidence F) : FlameletPDEClosed F := by
  exact And.intro E.speciesTransportClosed (And.intro E.energyEquationClosed (And.intro E.reactionRatesClosed E.boundaryConditionsClosed))

end CombustionCanonicalLaneLean
end HautevilleHouse