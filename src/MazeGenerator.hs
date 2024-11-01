module MazeGenerator (generateRandomMaze) where

import System.Random (randomRIO)

type Maze = [[Char]]
type Position = (Int, Int)

generateRandomMaze :: IO Maze
generateRandomMaze = do
    let emptyMaze = replicate 3 (replicate 3 '.')
    mazeWithWalls <- mapM (mapM randomizeCell) emptyMaze
    let mazeWithStart = setPosition mazeWithWalls (0, 0) 'S'
    let mazeWithEnd = setPosition mazeWithStart (2, 2) 'E'
    return mazeWithEnd
  where
    randomizeCell '.' = do
        isWall <- randomRIO (0, 1) :: IO Int
        return $ if isWall == 1 then '#' else '.'
    randomizeCell cell = return cell

    setPosition maze (x, y) char =
        take x maze ++ [take y (maze !! x) ++ [char] ++ drop (y + 1) (maze !! x)] ++ drop (x + 1) maze
