fizzbuzz :: (Int, Int, Int) -> String
fizzbuzz (val, a, b) | val `mod` (a * b) == 0 = a_out ++ b_out
                     | val `mod` a == 0       = a_out
                     | val `mod` b == 0       = b_out
                     | otherwise              = show val
 where
  a_out = "fizz"
  b_out = "buzz"

main = do
  mapM (putStrLn . fizzbuzz) [ (x, 3, 5) | x <- [1 .. 2 ^ 20] ]
