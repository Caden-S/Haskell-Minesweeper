module Types where

import Data.List

data Game = Game { difficulty :: Int
                ,  board :: Board }

data Board = Board [[Tile]]

data Tile = Tile { revealed :: Bool
                ,  bomb :: Bool
                ,  counter :: Int }
                deriving Show