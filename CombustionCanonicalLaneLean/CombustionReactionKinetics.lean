import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombustionCanonicalLaneLean

structure CombustionReactionKinetics where
  reactionMechanism : List (List Float × List Float × Float)  -- reactants, products, rateCoefficient
  equilibriumConstants : List Float
  kineticsClosed : Prop

theorem kinetics_closed (k : CombustionReactionKinetics) : k.kineticsClosed := by
  admit

end CombustionCanonicalLaneLean
end HautevilleHouse
