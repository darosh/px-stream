-- freeze.scpt
-- Adjust screen size bellow
-- Install: brew install cliclick
-- Enable /opt/homebrew/bin/cliclick in System Preferences → Security & Privacy → Accessibility
-- Adjust mouse positions bellow using: while true; do cliclick p; sleep 0.2; done
-- Save one archive to target/folder - max will reuse it next time and we can just automate the enter key on the save dialog
-- We use "Archive..." because "Export Max for Live device" is disabled and this solution does not help: https://cycling74.com/forums/%22export-max-for-live-device%22-in-project-grayed-out
-- From: https://github.com/darosh/px-stream/blob/main/scripts/freeze.scpt
-- Usage (full paths): osascript freeze.scpt /input/folder /target/folder

on run argv
    set deviceFolder to item 1 of argv
    set saveFolder to item 2 of argv
    
    -- list amxd files
    set fileList to paragraphs of (do shell script "ls -1 " & quoted form of deviceFolder & "/*.amxd")
    
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
                set frontmost to true
                tell window 1
                    set position to {0, 0}
                    set size to {1512, 982} -- adjust screen size
                end tell
            end tell
        end tell
        
        -- click "Show containing project"
        do shell script "/usr/bin/env cliclick c:492,960"
        delay 1
        
        -- click "Manage project"
        do shell script "/usr/bin/env cliclick c:410,960"
        delay 1
        
        -- click "Archive..." in the menu
        do shell script "/usr/bin/env cliclick c:410,787"
        delay 1
        
        -- confirm save dialog
        tell application "System Events"
            keystroke return
            delay 2
        end tell
        
        -- close patcher
        tell application "System Events"
            tell process "Max"
                keystroke "w" using command down
                keystroke "w" using command down
            end tell
        end tell
        
        delay 1
    end repeat
    
	-- after processing all devices
	my postProcess(saveFolder)
	
	do shell script "echo '✅ All devices archived and cleaned in " & quoted form of saveFolder & "'"
end run

-- Post-processing: clean up, unzip, and rename files in saveFolder
on postProcess(saveFolder)
    -- 1. Delete leftover .amxd (before unzipping)
    do shell script "rm -f " & quoted form of saveFolder & "/*.amxd"
    
    -- 2. Unzip all .zip files into saveFolder
    do shell script "for z in " & quoted form of saveFolder & "/*.zip; do unzip -o \"$z\" -d " & quoted form of saveFolder & "; done"
    
    -- 3. Delete the zip files
    do shell script "rm -f " & quoted form of saveFolder & "/*.zip"
    
    -- 4. Rename .amxd files to strip timestamps
    do shell script "
    cd " & quoted form of saveFolder & " &&
    for f in *.amxd; do
        base=$(echo \"$f\" | sed -E 's/_[0-9]{8}_[0-9]{6}//'); 
        mv -f \"$f\" \"$base\";
    done"

    -- 5. Delete __MACOSX artifact
    do shell script "rm -fd " & quoted form of saveFolder & "/__MACOSX"
end postProcess
