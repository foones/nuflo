_++_ : List a -> List a -> List a
[] ++ ys       = ys
(x : xs) ++ ys = x : (xs ++ ys)

intercalate : a -> List a -> List a
intercalate x (ys ++ zs) = ys ++ (x : zs)

main () = print (intercalate 0 (1 : 2 : 3 : [])) end
