import Text.Printf

main = do
    ina <- getLine
    inb <- getLine
    let a = read ina :: Integer
    let b = read inb :: Integer
    printf "%s = %d\n" "SOMA" (a+b)