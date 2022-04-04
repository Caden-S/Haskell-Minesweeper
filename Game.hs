module Game where

import Types
import Data.List
import System.Random

main = do
    let b = create_board 1
    print_board b

create_board :: Int -> Board
create_board diff = do
    let num_rows = get_board_rows diff-1
    let num_cols = get_board_cols diff-1
    let tile = Tile False False 0
    [ [tile | x <- [0..num_cols]] | y <- [0..num_rows] ]

print_board :: Board -> [IO()]
print_board board = do 
    let cols = [(" " ++ (show col))++ if col < 10 then " " else "" | col <- [0..length (board !! 0)] ]
    --mapM_ putStr cols
    --putStr "\n"
    map (mapM_ print_tile) board

print_tile :: Tile -> IO()
print_tile tile = do
    if (revealed tile)
        then putStr (show (counter tile))
    else putStr "X"

get_board_rows :: Int -> Int
get_board_rows diff = do
    let sizes = [9, 14, 16]
    sizes !! diff

get_board_cols :: Int -> Int
get_board_cols diff = do
    let sizes = [9, 14, 30]
    sizes !! diff