@echo off
setlocal enabledelayedexpansion

set /a file_count=0
set /a folder_num=1
set "batch_size=10"


if not exist "Batch_!folder_num!" mkdir "Batch_!folder_num!"

for %%F in (*) do (
    
    if not "%%~xF"==".bat" (
        move "%%F" "Batch_!folder_num!\"
        set /a file_count+=1
        
        
        if !file_count! equ !batch_size! (
            set /a file_count=0
            set /a folder_num+=1
            if not exist "Batch_!folder_num!" mkdir "Batch_!folder_num!"
        )
    )
)
echo All files successfully batched!
pause
