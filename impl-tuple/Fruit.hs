module Fruit
    ( Lens.Micro.Lens'
    , Filling
    , filling
    , flavor
    , taste
    ) where

import Lens.Micro

type Filling = ( Text, Text )

filling :: Filling

flavor :: Lens' Filling Text
taste  :: Lens' Filling Text

filling = ("flavorless","bland")

flavor = _1
taste  = _2
