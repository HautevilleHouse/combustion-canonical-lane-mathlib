import CombustionCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombustionCanonicalLaneLean

structure ReactionRatePackage where
  temperature : Type u
  pressure : Type v
  speciesConcentrations : Type w
  rateConstant : Prop
  arrheniusLaw : Prop
  reactionOrder : Prop
  equilibriumConstant : Prop

structure ReactionRateEvidence (R : ReactionRatePackage) where
  rateConstantClosed : R.rateConstant
  arrheniusLawClosed : R.arrheniusLaw
  reactionOrderClosed : R.reactionOrder
  equilibriumConstantClosed : R.equilibriumConstant

def ReactionRateClosed (R : ReactionRatePackage) : Prop :=
  R.rateConstant ∧ R.arrheniusLaw ∧ R.reactionOrder ∧ R.equilibriumConstant

theorem reaction_rate_closed_from_evidence (R : ReactionRatePackage) (E : ReactionRateEvidence R) :
  ReactionRateClosed R := by
  exact And.intro E.rateConstantClosed (And.intro E.arrheniusLawClosed (And.intro E.reactionOrderClosed E.equilibriumConstantClosed))

end CombustionCanonicalLaneLean
end HautevilleHouse