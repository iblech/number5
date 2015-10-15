module Main where

import Control.Monad
import System.Environment
import Text.Printf

points phi = go 0
    where
    go n = (r * cos (n*phi), r * sin (n*phi)) : go (n+1) where r = n

main = do
    [phi] <- getArgs
    mapM_ (\(x,y) -> printf "%f\t%f\n" x y) $ points (pi * (read phi :: Double))

-- Gnuplot:
-- plot "<./drehwinkel 1.61803398874989484820 | head -n 50000" ps 1 pt 5
