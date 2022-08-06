data Simpson where
  Abe    : Simpson
  Homer  : Simpson
  Bart   : Simpson
  Lisa   : Simpson
  Maggie : Simpson

father : Simpson -> Simpson
father Homer  = Abe
father Bart   = Homer
father Lisa   = Homer
father Maggie = Homer
-- Alternative:
-- father (Bart | Lisa | Maggie) = Homer

-- Function composition as an infix operator
_∘_ f g x = f (g x)

inverse : (a -> b) -> b -> a
inverse f (f x) = x

grandparent = father ∘ father
grandson = inverse grandparent

-- Print all of Abe's grandchildren
main : () -> IO
main () = print (grandson Abe) end

