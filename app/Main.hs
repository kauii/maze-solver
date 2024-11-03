module Main (main) where

import MazeGenerator (generateRandomMaze)
import MazeSolver (findPath)

printMaze :: [[Char]] -> IO ()
printMaze maze = mapM_ putStrLn maze


-- Main function to generate and display a random maze
main :: IO ()
main = do
    putStrLn "Generating a random maze..."
    maze <- generateRandomMaze  -- Generate a random maze using the imported function
    printMaze maze

    -- At this point, you should now implement your maze solver!
    -- The maze solver function should take a `Maze` as input and find a path
    -- from 'S' (the start) to 'E' (the endpoint).
    
    -- Suggested next steps:
    -- 1. Define a function `findPath :: Maze -> Maybe [Position]` in the separate module MazeSolver.hs which is in the ../src folder.
    -- 2. Implement the maze-solving logic using help of the pdf file linked in the README.md file.
    -- 3. Test your maze solver by calling it here in `main` after generating the maze.
    
    -- Uncomment and implement the following line once your solver is ready:
    -- (This is just a template, you can of course adjust the lines below)

    --case findPath maze of
    --    Just solvedMaze -> do
    --        putStrLn "Path found! Here is the solved maze:"
    --        printMaze solvedMaze 
    --    Nothing -> putStrLn "No path found."


