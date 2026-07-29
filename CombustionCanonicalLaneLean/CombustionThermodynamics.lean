import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombustionCanonicalLaneLean

structure CombustionThermodynamicsPackage where
  energyConservation : Prop
  massConservation : Prop
  momentumConservation : Prop
  speciesTransport : Prop
  equationOfState : Prop
  viscosityModel : Prop
  diffusivityModel : Prop
  reactionRateModel : Prop
  boundaryConditions : Prop
  initialConditions : Prop

structure CombustionThermodynamicsEvidence (C : CombustionThermodynamicsPackage) where
  energyConservationClosed : C.energyConservation
  massConservationClosed : C.massConservation
  momentumConservationClosed : C.momentumConservation
  speciesTransportClosed : C.speciesTransport
  equationOfStateClosed : C.equationOfState
  viscosityModelClosed : C.viscosityModel
  diffusivityModelClosed : C.diffusivityModel
  reactionRateModelClosed : C.reactionRateModel
  boundaryConditionsClosed : C.boundaryConditions
  initialConditionsClosed : C.initialConditions

def CombustionThermodynamicsClosed (C : CombustionThermodynamicsPackage) : Prop :=
  C.energyConservation ∧ C.massConservation ∧ C.momentumConservation ∧
  C.speciesTransport ∧ C.equationOfState ∧ C.viscosityModel ∧
  C.diffusivityModel ∧ C.reactionRateModel ∧ C.boundaryConditions ∧
  C.initialConditions

theorem combustion_thermodynamics_closed_from_evidence
    (C : CombustionThermodynamicsPackage) (E : CombustionThermodynamicsEvidence C) :
    CombustionThermodynamicsClosed C := by
  exact And.intro E.energyConservationClosed
    (And.intro E.massConservationClosed
      (And.intro E.momentumConservationClosed
        (And.intro E.speciesTransportClosed
          (And.intro E.equationOfStateClosed
            (And.intro E.viscosityModelClosed
              (And.intro E.diffusivityModelClosed
                (And.intro E.reactionRateModelClosed
                  (And.intro E.boundaryConditionsClosed
                    E.initialConditionsClosed)))))))

end CombustionCanonicalLaneLean
end HautevilleHouse