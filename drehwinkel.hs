module Main where

import Control.Monad
import System.Environment
import Data.Complex

points :: Float -> [Complex Float]
points phi = go (0::Int) 1
    where
    go n z = (fromIntegral n * z) : go (n+1) (z * z0)
    z0     = cis (2 * pi * phi)
-- TODO: Experiment with:
--  go n z = (sqrt (fromIntegral n) * z) : go (n+1) (z * z0)

main = do
    [phi] <- liftM (map read) getArgs
    forM_ (points phi) $ \z -> do
        putStrLn $ show (realPart z) ++ "\t" ++ show (imagPart z)

-- Gnuplot:
-- plot "<./drehwinkel 0.61803398874989484820 | head -n 5000" ps 1 pt 5
