import Hoverfly.Backend

add_hoverfly_tactics [assumption, contradiction, intro, rfl, subst_eqs,
  rewrite [Eq.comm], rewrite [Nat.add_zero], rewrite [Nat.add_succ],
  apply Exists.intro, apply Nat.le_trans, apply Nat.zero_le, apply Nat.sub_add_cancel,
  rewrite [Nat.two_mul]]

theorem demo_le_trans (a b c : Nat) (hab : a ≤ b) (hbc : b ≤ c) : a ≤ c := by
  hoverfly

theorem demo_exists_imp (x y : Nat) : x + x = y → ∃ z, y = 2 * z := by
  hoverfly

theorem demo_binding (n m x : Nat) : n + x = m → n <= m := by
  intro h
  hoverfly

theorem demo_exists : ∃ b, b = b ∧ b ≤ 10 := by
  hoverfly

theorem demo_mini : 1 = 1 /\ 2 = 2 := by
  hoverfly

theorem demo_binding_nonhyp (n m : Nat) : n <= m → ∃ x, m = x + n:= by
  hoverfly

theorem demo_add_assoc (n m p : Nat) :
    n + (m + p) = (n + m) + p := by
  hoverfly

theorem demo_long_names (very_very_long_variable_name : Nat) :
  very_very_long_variable_name = 1 ->
  ¬(very_very_long_variable_name = 2) /\ 1 = very_very_long_variable_name := by
  hoverfly
