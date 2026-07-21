/-
Palamedes Demos

To enable, add Palamedes to lakefile.toml
-/

-- import Hoverfly.Backend
-- import Palamedes.Synthesizer

-- set_option linter.unreachableTactic false
-- add_hoverfly_tactics
--   [
--     apply s_arbAtom _,
--     apply s_arbBool,
--     apply s_arbColor,
--     apply s_arbLabel,
--     apply s_arbNat,
--     apply s_arbTuple,
--     apply s_arbTy,
--     apply s_arbUnit,
--     apply (s_between (by first | aesop | omega)),
--     apply s_between_partial,
--     apply s_gt,
--     apply s_lt_partial,
--     apply s_mod2_partial,
--     apply s_pick,
--     apply s_pure,
--     assumption,
--     (goal_is_eq; apply convert (by norm_for_elements) (s_elements_partial _)),
--     normalize_and_apply,
--     normalize_and_apply_unfold,
--     ((repeat apply duncurry); intro),
--     skip
--   ]

-- @[simp]
-- def inBounds (lo hi : Int) : Tree Int → Bool
--   | .leaf => true
--   | .node l x r => lo <= x && x <= hi && inBounds lo hi l && inBounds lo hi r

-- open Gen.CorrectGen in
-- def demo_genInBounds (x y : Int): CorrectGen (fun t => inBounds x y t) := by
--   hoverfly
--   sorry

-- def demo_genEq2 : CorrectGen (· = 2) := by
--   hoverfly
--   sorry

-- def demo_genEq2or3 : CorrectGen (fun x => x = 2 ∨ x = 3) := by
--   hoverfly
--   sorry

-- @[simp]
-- def isAllTwos : Tree Nat → Bool
--   | .leaf => true
--   | .node l x r => x = 2 && isAllTwos l && isAllTwos r

-- def demo_genAllTwos : CorrectGen (fun t => isAllTwos t) := by
--   hoverfly
--   sorry
