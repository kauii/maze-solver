# Peer Exercise: Recursive Maze Solver in Haskell

## Setup

### Setup Haskell
The official haskell-website has an installation guide
https://www.haskell.org/ghcup/install/#how-to-install

TL;DR

For Linux, macOS, FreeBSD or Windows Subsystem 2 for Linux, run this in a terminal:
```bash
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
```
For Windows, run this in a PowerShell session:

```bash
Set-ExecutionPolicy Bypass -Scope Process -Force;[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; try { & ([ScriptBlock]::Create((Invoke-WebRequest https://www.haskell.org/ghcup/sh/bootstrap-haskell.ps1 -UseBasicParsing))) -Interactive -DisableCurl } catch { Write-Error $_ }
```





**Make sure to install stack as well, as it is needed for setting up the project**

As editor I would recommend using Visual Studio with the Haskell extension (extension id: haskell.haskell). You are free to use any other IDE though.

### Setup Project
1. First, clone this repository.
2. Go to a terminal and type in the following command:
   ```bash
   stack build
   ```

## Task Description
Create a recursive function to solve a maze represented as a 2D grid. In this grid:
- ```S``` denotes the starting point
- ```E``` marks the endpoint
- ```#``` represents walls
- ```.``` is a walkable path

The function should recursively search for a path from S to E. If it finds one, it should return the path taken; otherwise, it should indicate no path exists.

### Pass Criteria
1. Path found: The function should return a path from S to E if one exists.
2. Path not found: The function should indicate if no path exists.
3. Path Marking: Visited cells along the successful path should be marked.
4. Flexibility: The function should work for grids with different sizes.
5. Randomization: The function should work for all random generated grids.

### Example Maze
Here's an example maze, where ```S``` is at ```(0,0)``` and ```E``` is at ```(2,3)```:
```
S . # .
. # . .
. . . E
```
The solution could be displayed as:
```
S * # .
* # * .
* * * E
```
where ```*``` marks the path from ```S``` to ```E```.
