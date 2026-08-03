import HautevilleHouse.AbstractComputationalComplexityMathematicalProgrammingCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace AbstractComputationalComplexityMathematicalProgrammingCanonicalLaneLean

structure AdmissibleClass where
  lane : ComplexityAdmittedObject
  solverDecidesProjectedLanguage : Decides lane.solver lane.projectedLanguage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  Decides A.lane.solver A.lane.projectedLanguage ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end AbstractComputationalComplexityMathematicalProgrammingCanonicalLaneLean
end HautevilleHouse