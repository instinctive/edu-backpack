module Baking where

import Lens.Micro

import Fruit

bake :: Filling -> Text
bake a = "A " <> a ^. taste <> " " <> a ^. flavor <> " pie!"
