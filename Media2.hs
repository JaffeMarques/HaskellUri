import Text.Printf

media :: Float -> Float -> Float -> Float
media x y w = (x * 0.2)+(y*0.3)+(w*0.5)


main = do
    x<-getLine
    y<-getLine
    w<-getLine
    let ox = read x :: Float
    let oy = read y :: Float
    let ow = read w :: Float
    
    printf "%s = %.1f\n" "MEDIA" (media ox oy ow)