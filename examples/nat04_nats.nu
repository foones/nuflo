data Nat where
  Zero : Nat
  Suc  : Nat -> Nat

nat : Nat
nat = Zero
nat = Suc nat

main () = print nat end
