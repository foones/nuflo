
---- Type inference for the simply typed lambda calculus

-- Variable identifiers are natural numbers
data Id where
  Z : Id
  S : Id → Id

-- Types
data Type where
  BOOL : Type
  _=>_ : Type → Type → Type

-- Typing contexts
data Ctx where
  ∅   : Ctx
  _,_ : Ctx → Type → Ctx

-- Terms are encoded in de Bruijn style;
-- e.g. lam (lam (var (S Z))) is the K combinator.
data Term where
  var : Id → Term
  lam : Term → Term
  app : Term → Term → Term

_∈_∷_ : Ctx → Id → Type → ()
(Γ , A) ∈ Z   ∷ A = ()
(Γ , A) ∈ S x ∷ B = Γ ∈ x ∷ B

_⊢_∷_ : Ctx → Term → Type → ()
Γ ⊢ var x   ∷ A = Γ ∈ x ∷ A
Γ ⊢ lam t   ∷ (A => B) = (Γ , A) ⊢ t ∷ B
Γ ⊢ app t s ∷ B = fresh A in
                    Γ ⊢ t ∷ (A => B)
                  & Γ ⊢ s ∷ A

main () = print (
            -- Infer the type of the identity function.
            fresh A in
              (∅ ⊢ lam (var Z) ∷ A)
            & A
          ) end

