import Text.Printf

readDoubles :: IO [Double]
readDoubles = fmap (map read.words) getLine

distancia :: Double->Double->Double->Double->Double
distancia a b c d = sqrt((c-a)**2 + (d-b)**2)

main = do
    x1 <- readDoubles
    x2 <- readDoubles
    
    let xy1 = x1!!0
    let yx1 = x1!!1
    
    let xy2 = x2!!0
    let yx2 = x2!!1
    
    printf "%.4f\n" (distancia xy1 yx1 xy2 yx2)