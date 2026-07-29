import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombustionCanonicalLaneLean

structure CombustionSpeciesTransport where
  speciesCount : Nat
  diffusionCoefficients : Array Float
  thermoDiffusionCoefficients : Array Float
  reactionSourceTerms : Array Float
  transportClosed : Prop

theorem transport_closed (t : CombustionSpeciesTransport) : t.transportClosed := by
  admit

end CombustionCanonicalLaneLean
end HautevilleHouse
