module Game where

import Types
import Data.List
import System.Random

main = do
    create_board 1

create_board :: Int -> Board
create_board diff = do
    let num_rows = get_board_rows diff-1
    let num_cols = get_board_cols diff-1
    let tile = Tile False False 0
    [ [tile | x <- [0..num_cols]] | y <- [0..num_rows] ]

print_board :: Board -> IO()
print_board = do 
    1
    
--first_row :: 

get_board_rows :: Int -> Int
get_board_rows diff = do
    let sizes = [9, 14, 16]
    sizes !! diff

get_board_cols :: Int -> Int
get_board_cols diff = do
    let sizes = [9, 14, 30]
    sizes !! diff