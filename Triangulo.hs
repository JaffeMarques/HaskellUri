import Text.Printf (printf)
area_triangulo :: Integer -> Integer -> Integer -> Integer -> IO()
area_triangulo a b c d
    |a+b > c  &&  a+c > b && b+c>a ||b+c>d  && c+d>b  && b+d>c ||a+c > d && c+d>a && a+d>c || a+b>d &&  b+d>a  &&a+d>b = printf "S\n"
    | otherwise = printf "N\n"

readInt :: IO[Integer]
readInt = fmap (map read.words) getLine

posicao::[Integer]->Integer->Integer
posicao a i
    |i==0 = head a
posicao a i = posicao (tail a) (i-1)

main = do
    x <- readInt
    let a = posicao x 0
    let b = posicao x 1
    let c = posicao x 2
    let d = posicao x 3
    area_triangulo a b c d