import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombustionCanonicalLaneLean

structure PollutantFormationPackage where
  NOxFormation : Prop
  sootFormation : Prop
  COFormation : Prop
  unburnedHydrocarbons : Prop
  thermalNOxMechanism : Prop
  promptNOxMechanism : Prop
  fuelNOxMechanism : Prop
  sootNucleation : Prop
  sootSurfaceGrowth : Prop
  sootOxidation : Prop

structure PollutantFormationEvidence (P : PollutantFormationPackage) where
  NOxFormationClosed : P.NOxFormation
  sootFormationClosed : P.sootFormation
  COFormationClosed : P.COFormation
  unburnedHydrocarbonsClosed : P.unburnedHydrocarbons
  thermalNOxMechanismClosed : P.thermalNOxMechanism
  promptNOxMechanismClosed : P.promptNOxMechanism
  fuelNOxMechanismClosed : P.fuelNOxMechanism
  sootNucleationClosed : P.sootNucleation
  sootSurfaceGrowthClosed : P.sootSurfaceGrowth
  sootOxidationClosed : P.sootOxidation

def PollutantFormationClosed (P : PollutantFormationPackage) : Prop :=
  P.NOxFormation ∧ P.sootFormation ∧ P.COFormation ∧
  P.unburnedHydrocarbons ∧ P.thermalNOxMechanism ∧
  P.promptNOxMechanism ∧ P.fuelNOxMechanism ∧
  P.sootNucleation ∧ P.sootSurfaceGrowth ∧ P.sootOxidation

theorem pollutant_formation_closed_from_evidence
    (P : PollutantFormationPackage) (E : PollutantFormationEvidence P) :
    PollutantFormationClosed P := by
  exact And.intro E.NOxFormationClosed
    (And.intro E.sootFormationClosed
      (And.intro E.COFormationClosed
        (And.intro E.unburnedHydrocarbonsClosed
          (And.intro E.thermalNOxMechanismClosed
            (And.intro E.promptNOxMechanismClosed
              (And.intro E.fuelNOxMechanismClosed
                (And.intro E.sootNucleationClosed
                  (And.intro E.sootSurfaceGrowthClosed
                    E.sootOxidationClosed)))))))

end CombustionCanonicalLaneLean
end HautevilleHouse