import Data.List 
import Text.Printf

readInt :: IO [Integer]
readInt = fmap (map read.words) getLine

func1 :: [Integer] -> IO()
func1 x = do
  let y = sort x
  let qt = comp 0 x y
  let res = (genericLength x)-qt
  print res

loop ::Integer -> IO()
loop a
  | a == 0 = putStr ""
  | otherwise = do
      necessario <- getLine
      array1 <- readInt
      func1 array1 
      loop (a-1)

comp :: Integer -> [Integer] -> [Integer] -> Integer
comp _ [] [] = 0
comp qtdd listaoriginal listanova
  |not((head listaoriginal)==(last listanova)) = 1+ comp qtdd (tail listaoriginal) (init listanova)
  |otherwise = comp qtdd (tail listaoriginal) (init listanova)

main = do
  a <- readLn
  loop a