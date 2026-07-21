import Hoverfly.Backend

add_hoverfly_tactics [assumption, contradiction, intro, rfl, subst_eqs,
  rewrite [Eq.comm], rewrite [Nat.add_zero], rewrite [Nat.add_succ],
  apply Exists.intro, apply Nat.le_trans, apply Nat.zero_le, apply Nat.sub_add_cancel,
  rewrite [Nat.two_mul]]


theorem demo_binding (n m x : Nat) : n + x = m → n <= m := by
  intro h
  hoverfly

theorem demo_add_assoc (n m p : Nat) :
    n + (m + p) = (n + m) + p := by
  hoverfly
