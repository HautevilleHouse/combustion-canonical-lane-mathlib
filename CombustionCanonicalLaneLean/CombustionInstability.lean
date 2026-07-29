import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombustionCanonicalLaneLean

structure CombustionInstabilityPackage where
  thermoacousticInstability : Prop
  hydrodynamicInstability : Prop
  flameAcousticCoupling : Prop
  flameTransferFunction : Prop
  flameDescribingFunction : Prop
  stabilityMargin : Prop
  limitCycleAmplitude : Prop
  nonlinearSaturation : Prop
  passiveControl : Prop
  activeControl : Prop

structure CombustionInstabilityEvidence (C : CombustionInstabilityPackage) where
  thermoacousticInstabilityClosed : C.thermoacousticInstability
  hydrodynamicInstabilityClosed : C.hydrodynamicInstability
  flameAcousticCouplingClosed : C.flameAcousticCoupling
  flameTransferFunctionClosed : C.flameTransferFunction
  flameDescribingFunctionClosed : C.flameDescribingFunction
  stabilityMarginClosed : C.stabilityMargin
  limitCycleAmplitudeClosed : C.limitCycleAmplitude
  nonlinearSaturationClosed : C.nonlinearSaturation
  passiveControlClosed : C.passiveControl
  activeControlClosed : C.activeControl

def CombustionInstabilityClosed (C : CombustionInstabilityPackage) : Prop :=
  C.thermoacousticInstability ∧ C.hydrodynamicInstability ∧
  C.flameAcousticCoupling ∧ C.flameTransferFunction ∧
  C.flameDescribingFunction ∧ C.stabilityMargin ∧
  C.limitCycleAmplitude ∧ C.nonlinearSaturation ∧
  C.passiveControl ∧ C.activeControl

theorem combustion_instability_closed_from_evidence
    (C : CombustionInstabilityPackage) (E : CombustionInstabilityEvidence C) :
    CombustionInstabilityClosed C := by
  exact And.intro E.thermoacousticInstabilityClosed
    (And.intro E.hydrodynamicInstabilityClosed
      (And.intro E.flameAcousticCouplingClosed
        (And.intro E.flameTransferFunctionClosed
          (And.intro E.flameDescribingFunctionClosed
            (And.intro E.stabilityMarginClosed
              (And.intro E.limitCycleAmplitudeClosed
                (And.intro E.nonlinearSaturationClosed
                  (And.intro E.passiveControlClosed
                    E.activeControlClosed)))))))

end CombustionCanonicalLaneLean
end HautevilleHouse