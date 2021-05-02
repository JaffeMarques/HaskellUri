import Text.Printf

readInts :: IO [Integer]
readInts = fmap (map read.words) getLine
main = do
  valor <- readInts
  if(valor!!0) > (valor!!1)
    then print (valor!!0)
  else print (valor!!1)