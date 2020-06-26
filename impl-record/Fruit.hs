module Fruit
    ( Lens.Micro.Lens'
    , Filling
    , filling
    , flavor
    , taste
    ) where

import Lens.Micro

data Filling = Filling { _flavor :: Text, _taste :: Text }
    deriving Show

filling :: Filling

flavor :: Lens' Filling Text
taste  :: Lens' Filling Text

filling = Filling "flavorless" "bland"

flavor f s = f (_flavor s) <&> \a -> s { _flavor = a }
taste  f s = f (_taste  s) <&> \a -> s { _taste  = a }
