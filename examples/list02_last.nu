_++_ : List a -> List a -> List a
[] ++ ys       = ys
(x : xs) ++ ys = x : (xs ++ ys)

last : List a -> a
last (_ ++ (x : [])) = x

main : () -> IO
main () = print (last (1 : 2 : 3 : [])) end
