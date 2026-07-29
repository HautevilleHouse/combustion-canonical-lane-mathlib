import CombustionCanonicalLaneLean.SimplifiedKinetics

namespace HautevilleHouse
namespace CombustionCanonicalLaneLean

def ConstrainedCombustionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_combustion_endgame (A : AdmissibleClass) : ConstrainedCombustionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombustionCanonicalLaneLean
end HautevilleHouse