import Text.Printf (printf)

conversao :: Integer -> Integer -> Integer
conversao t p
    | t < p = 0
    | otherwise = 1 + conversao(t-p)(p)

main = do
    a <- readLn
    let h = conversao a 3600
    let m = conversao (a-(h*3600)) (60)
    let s = conversao (a-((h*3600)+(m*60))) (1)
    printf "%d:%d:%d\n" h m s