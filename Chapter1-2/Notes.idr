
module Notes

add : Int -> Int -> Int
add x y = x + y

identity : a -> a
identity = id

double : Num a => a -> a
double x = x + x

twice : (a -> a) -> a -> a
twice fn a = fn (fn a)

twiceLambda: Integer
twiceLambda = twice (\x => x * x) 2

consing : List Integer
consing = 1 :: 2 :: 3 :: []

-- Exercices

palindrom : String -> Bool
palindrom str = let s = toLower str in
                    s == reverse s'
                    
palindrom' : String -> Bool
palindrom' s = if length s > 10
                then palindrom s
                else False

palindrom'' : Nat -> String -> Bool
palindrom'' len s = if length s > len
                then palindrom s
                else False

counts : String -> (Nat, Nat)
counts s = (length (words s), length s)

top : Ord a => Nat -> List a -> List a
top n = Prelude.List.take n . reverse . sort

over_length : Nat -> List String -> Nat
over_length count = length . filter (\x => length x > count)
