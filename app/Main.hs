module Main where

import Lens.Micro

import Fruit
import Baking

main :: IO ()
main = do
    putTextLn (bake pie)
    print pie
  where
    pie = filling
        & taste  .~ "tart"
        & flavor .~ "cherry"
