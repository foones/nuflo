data Nat where
  Z : Nat
  S  : Nat -> Nat

_+_ : Nat -> Nat -> Nat
Z + n = n
S n + m = S (n + m)

coin : () -> Nat
coin () = S Z | S (S Z)
{--- Equivalently
coin () = S Z
coin () = S (S Z)
---}

main () = print (coin () + coin ()) end
