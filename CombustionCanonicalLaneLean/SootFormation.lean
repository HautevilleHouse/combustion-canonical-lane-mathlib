import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombustionCanonicalLaneLean

structure SootFormationPackage where
  precursorFormation : Prop
  particleNucleation : Prop
  surfaceGrowth : Prop
  oxidation : Prop
  aggregateMorphology : Prop

structure SootFormationEvidence (S : SootFormationPackage) where
  precursorFormationClosed : S.precursorFormation
  particleNucleationClosed : S.particleNucleation
  surfaceGrowthClosed : S.surfaceGrowth
  oxidationClosed : S.oxidation
  aggregateMorphologyClosed : S.aggregateMorphology

def SootFormationClosed (S : SootFormationPackage) : Prop :=
  S.precursorFormation ∧ S.particleNucleation ∧ S.surfaceGrowth ∧ S.oxidation ∧ S.aggregateMorphology

theorem soot_formation_closed_from_evidence
    (S : SootFormationPackage) (E : SootFormationEvidence S) :
    SootFormationClosed S := by
  exact And.intro E.precursorFormationClosed
    (And.intro E.particleNucleationClosed
      (And.intro E.surfaceGrowthClosed
        (And.intro E.oxidationClosed E.aggregateMorphologyClosed)))

end CombustionCanonicalLaneLean
end HautevilleHouse