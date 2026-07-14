import Hoverfly.Backend

import Palamedes.Synthesizer
open Gen.CorrectGen


set_option linter.unusedTactic false

@[simp]
def inBounds (lo hi : Int) : Tree Int → Bool
  | .leaf => true
  | .node l x r => lo <= x && x <= hi && inBounds lo hi l && inBounds lo hi r

def demo_genInBounds (x y : Int): CorrectGen (fun t => inBounds x y t) := by
  hoverfly
  sorry

theorem demo_small (n m x : Nat) : n + x = m → n <= m := by
  intro h
  hoverfly
  sorry

theorem demo_le_trans (a b c : Nat) (hab : a ≤ b) (hbc : b ≤ c) : a ≤ c := by
  hoverfly
  sorry

theorem demo_exists : ∃ b, b = b ∧ b ≤ 10 := by
  hoverfly
  sorry

def demo_genEq2 : CorrectGen (· = 2) := by
  hoverfly
  sorry

def demo_genEq2or3 : CorrectGen (fun x => x = 2 ∨ x = 3) := by
  hoverfly
  sorry

@[simp]
def isAllTwos : Tree Nat → Bool
  | .leaf => true
  | .node l x r => x = 2 && isAllTwos l && isAllTwos r

def demo_genAllTwos : CorrectGen (fun t => isAllTwos t) := by
  hoverfly
  sorry

theorem demo_mini : 1 = 1 /\ 2 = 2 := by
  hoverfly
  sorry

theorem demo_long_names (very_very_long_variable_name : Nat) :
  very_very_long_variable_name = 1 ->
  ¬(very_very_long_variable_name = 2) /\ 1 = very_very_long_variable_name := by
  hoverfly
  sorry

theorem demo_medium' (n m x : Nat) : n + x = m → n <= m := by
  hoverfly
  sorry

theorem demo_exists' (x y : Nat) : x + x = y → ∃ z, y = 2 * z := by
  intro
  exists x
  subst_eqs
  lia
