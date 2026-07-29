import CombustionCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CombustionCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CombustionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombustionCanonicalLaneLean
end HautevilleHouse