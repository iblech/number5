module Main where

import Control.Monad
import System.Environment
import Text.Printf

main = do
    [phi] <- liftM (map read) getArgs
    forM_ [(0::Double)..] $ \n -> do
        let r = n
        let x = r * cos (n*2*pi*phi)
        let y = r * sin (n*2*pi*phi)
        printf "%f\t%f\n" x y

-- Gnuplot:
-- plot "<./drehwinkel 0.61803398874989484820 | head -n 5000" ps 1 pt 5
