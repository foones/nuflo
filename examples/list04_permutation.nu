
_++_ : List a -> List a -> List a
[] ++ ys       = ys
(x : xs) ++ ys = x : (xs ++ ys)

foldr : (a -> b -> b) -> b -> List a -> b
foldr _ z []       = z
foldr f z (x : xs) = f x (foldr f z xs)

intercalate : a -> List a -> List a
intercalate x (ys ++ zs) = ys ++ (x : zs)

permutation : List a -> List a
permutation xs = foldr intercalate [] xs

main () = print (permutation (1 : 2 : 3 : 4 : [])) end

