import CombustionCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CombustionCanonicalLaneLean

structure AdmissibleClass where
  object : CombustionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CombustionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombustionCanonicalLaneLean
end HautevilleHouse