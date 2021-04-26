fizzbuzz :: Int -> String
fizzbuzz val
    | val `mod` (a * b) == 0 = a_out ++ b_out
    | val `mod` a == 0       = a_out
    | val `mod` b == 0       = b_out
    | otherwise              = show val
    where a = 3
          b = 5
          a_out = "fizz"
          b_out = "buzz"

main = do
    mapM (putStrLn . fizzbuzz) [1..2^7]
