-- This module generates a random maze
-- You must not change anything in this module
module MazeGenerator (generateRandomMaze) where

import System.Random (randomRIO)

type Maze = [[Char]]
type Position = (Int, Int)

generateRandomMaze :: IO Maze
generateRandomMaze = do
    numRows <- randomRIO (3, 5)  -- Random number of rows between 3 and 5
    numCols <- randomRIO (3, 5)  -- Random number of columns between 3 and 5
    let emptyMaze = replicate numRows (replicate numCols '.')
    mazeWithWalls <- mapM (mapM randomizeCell) emptyMaze
    let start :: Position
        start = (0, 0)
    let end :: Position
        end = (numRows - 1, numCols - 1)
    let mazeWithStart = setPosition mazeWithWalls start 'S'
    let mazeWithEnd = setPosition mazeWithStart end 'E'
    return mazeWithEnd
  where
    randomizeCell :: Char -> IO Char
    randomizeCell '.' = do
        isWall <- randomRIO (1, 4) :: IO Int
        return $ if isWall == 1 then '#' else '.'
    randomizeCell cell = return cell

    setPosition :: Maze -> Position -> Char -> Maze
    setPosition maze (x, y) char =
        take x maze ++ [take y (maze !! x) ++ [char] ++ drop (y + 1) (maze !! x)] ++ drop (x + 1) maze
