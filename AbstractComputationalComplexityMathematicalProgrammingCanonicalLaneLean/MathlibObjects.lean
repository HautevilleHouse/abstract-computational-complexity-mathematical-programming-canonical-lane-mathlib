import HautevilleHouse.AbstractComputationalComplexityMathematicalProgrammingCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Set.Basic
import Mathlib.Data.List.Basic

namespace HautevilleHouse
namespace AbstractComputationalComplexityMathematicalProgrammingCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

abbrev BitString := List Bool
abbrev Language := Set BitString

structure DecisionProcedure where
  accepts : BitString → Bool

structure PolynomialCertificateBound where
  degree : Nat

structure ComplexityClassicalObject where
  language : Language
  bound : PolynomialCertificateBound

structure ComplexityAdmittedObject where
  classicalObject : ComplexityClassicalObject
  projectedLanguage : Language
  solver : DecisionProcedure

structure ComplexityEndgameState where
  admittedObject : ComplexityAdmittedObject

def Decides (M : DecisionProcedure) (L : Language) : Prop :=
  ∀ x : BitString, M.accepts x = true ↔ x ∈ L

end AbstractComputationalComplexityMathematicalProgrammingCanonicalLaneLean
end HautevilleHouse