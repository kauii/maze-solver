module Main (main) where

import MazeGenerator (generateRandomMaze)

-- Main function to generate and display a random maze
main :: IO ()
main = do
    putStrLn "Generating a random 3x3 maze..."
    maze <- generateRandomMaze  -- Generate a random maze using the imported function
    putStrLn "Here is your random maze:"
    mapM_ putStrLn maze         -- Print each row of the maze on a new line

    -- Note for students:
    -- At this point, you should now implement your maze solver!
    -- The maze solver function should take a `Maze` as input and find a path
    -- from 'S' (the start) to 'E' (the endpoint).
    
    -- Suggested next steps:
    -- 1. Define a function `findPath :: Maze -> Maybe [Position]` in a separate module or here.
    -- 2. Implement the maze-solving logic using recursion, pattern matching, and list processing.
    -- 3. Test your maze solver by calling it here in `main` after generating the maze.
    
    -- Uncomment and implement the following line once your solver is ready:
    -- case findPath maze of
    --     Just path -> putStrLn $ "Path found: " ++ show path
    --     Nothing   -> putStrLn "No path found."
