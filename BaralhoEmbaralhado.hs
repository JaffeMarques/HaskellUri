import Text.Printf (printf)

nype :: Float -> Float -> Integer -> IO()
nype i a n
    | i == 1.0 && n > 0 = printf "%d\n" n
    | i <= a/2.0        = nype (2*i) (a) (n+1)
    | otherwise       = nype (i-(a-i+1)) (a) (n+1)

main = do
    a <- readLn
    nype 1.0 a 0