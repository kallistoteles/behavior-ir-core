import QualifiedNamesControl
open Core036QualifiedNames Aeneas.Std
example : left.Dictionary.run leftNat rightNat 3 5 = Result.ok 6 := by
  simp [leftNat]
