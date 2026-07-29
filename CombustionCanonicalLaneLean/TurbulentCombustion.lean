import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombustionCanonicalLaneLean

structure TurbulentCombustionPackage where
  turbulenceModel : Prop
  turbulenceCombustionInteraction : Prop
  flameTurbulenceRegime : Prop
  wrinkledFlamelet : Prop
  thinReactionZone : Prop
  brokenReactionZone : Prop
  flameExtinctionByTurbulence : Prop
  burningRateTurbulenceEnhancement : Prop
  scalarDissipationRate : Prop

structure TurbulentCombustionEvidence (T : TurbulentCombustionPackage) where
  turbulenceModelClosed : T.turbulenceModel
  turbulenceCombustionInteractionClosed : T.turbulenceCombustionInteraction
  flameTurbulenceRegimeClosed : T.flameTurbulenceRegime
  wrinkledFlameletClosed : T.wrinkledFlamelet
  thinReactionZoneClosed : T.thinReactionZone
  brokenReactionZoneClosed : T.brokenReactionZone
  flameExtinctionByTurbulenceClosed : T.flameExtinctionByTurbulence
  burningRateTurbulenceEnhancementClosed : T.burningRateTurbulenceEnhancement
  scalarDissipationRateClosed : T.scalarDissipationRate

def TurbulentCombustionClosed (T : TurbulentCombustionPackage) : Prop :=
  T.turbulenceModel ∧ T.turbulenceCombustionInteraction ∧
  T.flameTurbulenceRegime ∧ T.wrinkledFlamelet ∧
  T.thinReactionZone ∧ T.brokenReactionZone ∧
  T.flameExtinctionByTurbulence ∧ T.burningRateTurbulenceEnhancement ∧
  T.scalarDissipationRate

theorem turbulent_combustion_closed_from_evidence
    (T : TurbulentCombustionPackage) (E : TurbulentCombustionEvidence T) :
    TurbulentCombustionClosed T := by
  exact And.intro E.turbulenceModelClosed
    (And.intro E.turbulenceCombustionInteractionClosed
      (And.intro E.flameTurbulenceRegimeClosed
        (And.intro E.wrinkledFlameletClosed
          (And.intro E.thinReactionZoneClosed
            (And.intro E.brokenReactionZoneClosed
              (And.intro E.flameExtinctionByTurbulenceClosed
                (And.intro E.burningRateTurbulenceEnhancementClosed
                  E.scalarDissipationRateClosed))))))

end CombustionCanonicalLaneLean
end HautevilleHouse