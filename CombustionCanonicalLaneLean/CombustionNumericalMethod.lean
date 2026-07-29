import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombustionCanonicalLaneLean

structure CombustionNumericalMethod where
  discretizationScheme : String  -- e.g., "finiteVolume"
  timeSteppingMethod : String  -- e.g., "implicit"
  solverConvergence : Prop

theorem numerical_closed (n : CombustionNumericalMethod) : n.solverConvergence := by
  admit

end CombustionCanonicalLaneLean
end HautevilleHouse
