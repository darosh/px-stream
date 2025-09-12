-- freeze.scpt
-- Usage: osascript freeze.scpt /input/folder /output/folder

on run argv
    if (count of argv) < 2 then
        display dialog "Usage: osascript freeze.scpt /input/folder /output/folder"
        return
    end if
    
    set deviceFolder to item 1 of argv
    set saveFolder to item 2 of argv
    
    -- ensure output folder exists
    do shell script "mkdir -p " & quoted form of saveFolder
    
    -- get list of .amxd files from shell (much safer than Finder)
    set fileList to paragraphs of (do shell script "ls -1 " & quoted form of deviceFolder & "/*.amxd")
    
    repeat with devicePath in fileList
        set deviceName to do shell script "basename " & quoted form of devicePath
        set savePath to saveFolder & "/" & deviceName
        
        -- progress log to terminal
        do shell script "echo Freezing " & quoted form of deviceName
        
        tell application "Max"
            activate
            open devicePath
            delay 2
        end tell
        
        tell application "System Events"
            tell process "Max"
                set frontmost to true
                
                -- Lock patcher
                keystroke "e" using command down
                delay 0.5
                
                -- Freeze
                click menu item "Freeze Device" of menu "File" of menu bar 1
                delay 2
                
                -- Save As
                keystroke "S" using {command down, shift down}
                delay 1
                keystroke savePath
                delay 0.5
                keystroke return
                delay 2
            end tell
        end tell
        
        -- Close patcher
        tell application "System Events"
            tell process "Max"
                keystroke "w" using command down
                delay 0.5
            end tell
        end tell
    end repeat
end run
