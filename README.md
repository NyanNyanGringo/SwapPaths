# SwapPaths Context Menu for Windows Explorer

This repository contains a script that adds a context menu item in Windows Explorer to swap
directory paths. For example, between `Z:\` and `R:\`, or any other customizable paths.
The script automatically opens the new path in a new Explorer window.

## Setup Instructions

1. Save the `swap_path` folder (containing `SwapPath.ps1` and `SwapPathContextMenu.reg`) to a directory on your computer.

2. In `SwapPath.ps1`, change the paths you want to swap:
    ```powershell
    $Path1 = 'Z:\some_path'
    $Path2 = 'R:\some_path'
    ```

3. In `SwapPathContextMenu.reg`, replace `C:\\path\\to\\SwapPath.ps1` with the actual path to your `SwapPath.ps1` file. Warning: instead of **\\** use **\\\\**.

4. Double-click `SwapPathContextMenu.reg` to add the context menu entry to Windows Explorer.
