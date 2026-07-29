import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombustionCanonicalLaneLean

structure CombustionFlameletModel where
  mixtureFraction : Float
  scalarDissipationRate : Float
  flameletLibrary : List (Float × Float) -- mixtureFraction vs temperature
  flameletClosed : Prop

theorem flamelet_closed (f : CombustionFlameletModel) : f.flameletClosed := by
  admit

end CombustionCanonicalLaneLean
end HautevilleHouse
