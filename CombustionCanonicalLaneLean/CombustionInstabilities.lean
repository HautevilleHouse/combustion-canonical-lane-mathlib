import CombustionCanonicalLaneLean.FlameStructure

namespace HautevilleHouse
namespace CombustionCanonicalLaneLean

structure InstabilityPackage {R : ReactionRatePackage} {F : FlamePackage R} where
  thermoacousticInstability : Prop
  darrieusLandauInstability : Prop
  rayleighCriterion : Prop
  flameAcousticCoupling : Prop

structure InstabilityEvidence {R : ReactionRatePackage} {F : FlamePackage R} (I : InstabilityPackage F) where
  thermoacousticInstabilityClosed : I.thermoacousticInstability
  darrieusLandauInstabilityClosed : I.darrieusLandauInstability
  rayleighCriterionClosed : I.rayleighCriterion
  flameAcousticCouplingClosed : I.flameAcousticCoupling

def InstabilityClosed {R : ReactionRatePackage} {F : FlamePackage R} (I : InstabilityPackage F) : Prop :=
  I.thermoacousticInstability ∧ I.darrieusLandauInstability ∧ I.rayleighCriterion ∧ I.flameAcousticCoupling

theorem instability_closed_from_evidence {R : ReactionRatePackage} {F : FlamePackage R} (I : InstabilityPackage F) (E : InstabilityEvidence I) : InstabilityClosed I := by
  exact And.intro E.thermoacousticInstabilityClosed (And.intro E.darrieusLandauInstabilityClosed (And.intro E.rayleighCriterionClosed E.flameAcousticCouplingClosed))

end CombustionCanonicalLaneLean
end HautevilleHouse