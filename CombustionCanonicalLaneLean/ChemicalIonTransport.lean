import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombustionCanonicalLaneLean

structure ChemicalIonTransportPackage where
  electricField : Prop
  ionMobility : Prop
  transportCoefficients : Prop
  spaceChargeRegion : Prop

structure ChemicalIonTransportEvidence (C : ChemicalIonTransportPackage) where
  electricFieldClosed : C.electricField
  ionMobilityClosed : C.ionMobility
  transportCoefficientsClosed : C.transportCoefficients
  spaceChargeRegionClosed : C.spaceChargeRegion

def ChemicalIonTransportClosed (C : ChemicalIonTransportPackage) : Prop :=
  C.electricField ∧ C.ionMobility ∧ C.transportCoefficients ∧ C.spaceChargeRegion

theorem chemical_ion_transport_closed_from_evidence
    (C : ChemicalIonTransportPackage) (E : ChemicalIonTransportEvidence C) :
    ChemicalIonTransportClosed C := by
  exact And.intro E.electricFieldClosed
    (And.intro E.ionMobilityClosed
      (And.intro E.transportCoefficientsClosed E.spaceChargeRegionClosed))

end CombustionCanonicalLaneLean
end HautevilleHouse