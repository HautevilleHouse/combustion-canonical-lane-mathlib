import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombustionCanonicalLaneLean

structure ReactionDiffusionFlamePackage where
  temperatureField : Type u
  speciesConcentration : Type v
  heatRelease : Prop
  diffusionCoefficient : Prop
  reactionRateFunction : Prop

structure ReactionDiffusionFlameEvidence (R : ReactionDiffusionFlamePackage) where
  heatReleaseClosed : R.heatRelease
  diffusionCoefficientClosed : R.diffusionCoefficient
  reactionRateFunctionClosed : R.reactionRateFunction

def ReactionDiffusionFlameClosed (R : ReactionDiffusionFlamePackage) : Prop :=
  R.heatRelease ∧ R.diffusionCoefficient ∧ R.reactionRateFunction

theorem reaction_diffusion_flame_closed_from_evidence
    (R : ReactionDiffusionFlamePackage) (E : ReactionDiffusionFlameEvidence R) :
    ReactionDiffusionFlameClosed R := by
  exact And.intro E.heatReleaseClosed
    (And.intro E.diffusionCoefficientClosed E.reactionRateFunctionClosed)

end CombustionCanonicalLaneLean
end HautevilleHouse