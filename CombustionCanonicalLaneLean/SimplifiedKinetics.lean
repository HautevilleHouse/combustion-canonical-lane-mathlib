import CombustionCanonicalLaneLean.FlamePropagation

namespace HautevilleHouse
namespace CombustionCanonicalLaneLean

structure SimplifiedKineticsPackage {G : CombustorGeometryPackage} {F : FlameletPDEPackage G} {I : IgnitionDelayPackage F} {P : FlamePropagationPackage I} where
  globalReactionMechanism : Prop
  reducedMechanismValidated : Prop
  sensitivityParameters : Prop
  steadyStateAssumptions : Prop

structure SimplifiedKineticsEvidence {G : CombustorGeometryPackage} {F : FlameletPDEPackage G} {I : IgnitionDelayPackage F} {P : FlamePropagationPackage I} (K : SimplifiedKineticsPackage P) where
  globalReactionMechanismClosed : K.globalReactionMechanism
  reducedMechanismValidatedClosed : K.reducedMechanismValidated
  sensitivityParametersClosed : K.sensitivityParameters
  steadyStateAssumptionsClosed : K.steadyStateAssumptions

def SimplifiedKineticsClosed {G : CombustorGeometryPackage} {F : FlameletPDEPackage G} {I : IgnitionDelayPackage F} {P : FlamePropagationPackage I} (K : SimplifiedKineticsPackage P) : Prop :=
  K.globalReactionMechanism ∧ K.reducedMechanismValidated ∧ K.sensitivityParameters ∧ K.steadyStateAssumptions

theorem simplified_kinetics_closed_from_evidence {G : CombustorGeometryPackage} {F : FlameletPDEPackage G} {I : IgnitionDelayPackage F} {P : FlamePropagationPackage I} (K : SimplifiedKineticsPackage P) (E : SimplifiedKineticsEvidence K) : SimplifiedKineticsClosed K := by
  exact And.intro E.globalReactionMechanismClosed (And.intro E.reducedMechanismValidatedClosed (And.intro E.sensitivityParametersClosed E.steadyStateAssumptionsClosed))

end CombustionCanonicalLaneLean
end HautevilleHouse