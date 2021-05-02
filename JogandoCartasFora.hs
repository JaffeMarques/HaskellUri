import Text.Printf

readInt :: IO Integer
readInt = readLn

put_end :: [Integer] -> [Integer]
put_end [] = []
put_end lista = (tail lista)++[(head lista)]

func :: [Integer] -> [Integer]
func [] = []
func lista = ((head lista):(func (put_end (tail lista))))

imprime :: [Integer] -> [Char]
imprime [a] = show a
imprime [a,b] =  show a
imprime lista = (show(head lista)++", ")++imprime(tail lista)

imp :: Integer -> IO()
imp entrada = do
  let lista = [1..entrada]
  let discartadas = func lista
  let a = imprime discartadas
  printf "Discarded cards: %s\n" a
  printf "Remaining card: %d\n" (last discartadas)

laco :: Integer -> IO()
laco a
    | a == 0 = putStr ""
    | otherwise = do
        imp a
        r <- readInt
        laco r
main = do
  entrada <- readInt
  laco entrada
  --print "rodou\n"