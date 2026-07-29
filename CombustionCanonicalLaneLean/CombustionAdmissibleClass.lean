import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombustionCanonicalLaneLean

structure CombustionAdmittedObject where
  fuelType : String
  oxidizerType : String
  equivalenceRatio : Float
  reactionMechanism : String
  conclusion : Prop

structure CombustionAdmissibleClass where
  object : CombustionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : CombustionAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombustionCanonicalLaneLean
end HautevilleHouse
