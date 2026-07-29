import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombustionCanonicalLaneLean

structure FlameStructurePackage where
  fuelType : String
  oxidizerType : String
  equivalenceRatio : Float
  temperatureProfile : Float -> Float
  speciesConcentration : String -> Float -> Float
  reactionMechanism : String

structure FlameStructureEvidence (F : FlameStructurePackage) where
  flameSpeedComputed : Prop
  ignitionDelayValidated : Prop
  extinctionLimitIdentified : Prop
  flameSpeedComputedClosed : F.flameSpeedComputed
  ignitionDelayValidatedClosed : F.ignitionDelayValidated
  extinctionLimitIdentifiedClosed : F.extinctionLimitIdentified

def FlameStructureClosed (F : FlameStructurePackage) : Prop :=
  F.flameSpeedComputed ∧ F.ignitionDelayValidated ∧ F.extinctionLimitIdentified

theorem flame_structure_closed_from_evidence (F : FlameStructurePackage) (E : FlameStructureEvidence F) :
    FlameStructureClosed F := by
  exact And.intro E.flameSpeedComputedClosed (And.intro E.ignitionDelayValidatedClosed E.extinctionLimitIdentifiedClosed)

end CombustionCanonicalLaneLean
end HautevilleHouse
