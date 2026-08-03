import HautevilleHouse.AbstractComputationalComplexityMathematicalProgrammingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AbstractComputationalComplexityMathematicalProgrammingCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def complexityProjection : Projection ComplexityEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem complexity_projection_idempotent (x : ComplexityEndgameState) :
    complexityProjection.toFun (complexityProjection.toFun x) = complexityProjection.toFun x := by
  exact complexityProjection.idempotent x

end AbstractComputationalComplexityMathematicalProgrammingCanonicalLaneLean
end HautevilleHouse