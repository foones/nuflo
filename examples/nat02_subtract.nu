
data Nat where
  Z : Nat
  S  : Nat -> Nat

_+_ : Nat -> Nat -> Nat
Z + n = n
S n + m = S (n + m)

_-_ : Nat -> Nat -> Nat
(x + y) - y = x
{--- Equivalently:
x - y = fresh z in (x ~ y + z) & z
---}

main () = print (S (S (S Z)) - S Z) end
