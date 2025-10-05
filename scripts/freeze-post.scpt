on run argv
    set deviceFolder to item 1 of argv
    set saveFolder to item 2 of argv
    
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
