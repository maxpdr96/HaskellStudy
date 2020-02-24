module Main where

bubbleSort [] = []
bubbleSort x = (iterate swapPass x) !! ((length x)-1)
   where
      swapPass [x]=[x]
      swapPass (x:y:zs)
         | x>y = y:swapPass (x:zs)
         | otherwise = x:swapPass (y:zs)