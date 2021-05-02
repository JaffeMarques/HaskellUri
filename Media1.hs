import Text.Printf

media :: Float -> Float -> Float
media y x = ((y * 3.5)+(x*7.5))/11

readFloat :: IO Float
readFloat = readLn

main = do
    x<-readFloat
    y<-readFloat
    
    printf "MEDIA = %.5f\n" (media x y)