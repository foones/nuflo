
_++_ : List a -> List a -> List a
[] ++ ys       = ys
(x : xs) ++ ys = x : (xs ++ ys)

prefix : List a -> List a
prefix (xs ++ ys) = xs

main : () -> IO
main () = print (prefix (1 : 2 : 3 : [])) end

