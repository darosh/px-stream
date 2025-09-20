-- resave.scpt
-- Usage (full paths): osascript resave.scpt /input/folder

on run argv
    set deviceFolder to item 1 of argv
    
    -- list amxd files
    set fileList to paragraphs of (do shell script "ls -1 " & quoted form of deviceFolder & "/*.maxpat")
    
    repeat with devicePath in fileList
        set deviceName to do shell script "basename " & quoted form of devicePath
        do shell script "echo Archiving " & quoted form of deviceName
        
        tell application "Max"
            activate
            open devicePath
            delay 2
        end tell
        
        tell application "System Events"
            tell process "Max"
                keystroke "e" using command down
                keystroke "s" using command down
                keystroke "w" using command down
            end tell
        end tell
        
        delay 1
    end repeat
    
	do shell script "echo '✅ All maxpat files resaved'"
end run
