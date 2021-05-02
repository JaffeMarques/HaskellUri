import Text.Printf (printf)

func:: Integer -> Integer -> IO()
func n i
    | i < 999 = do
                printf "N[%d] = %d\n" i (mod i n)
                func n (i+1)
    | i == 999 = printf "N[%d] = %d\n" i (mod i n)
main = do
   f <- readLn
   func f 0