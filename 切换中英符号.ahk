CapsLock::
    ClipSaved := ClipboardAll
    sleep, 20
    ClipSaved1 := Clipboard
    sleep, 20
    Send, ^x
    sleep, 20
    ClipSaved2 := Clipboard
    sleep, 20

    if(ClipSaved1 = ClipSaved2){
    Send, +{Left}
    sleep, 10
    Send, ^x
    sleep, 10
    ClipSaved2 := clipboard
    sleep, 20
    if(ClipSaved1 = ClipSaved2){
        clipboard := ClipSaved
        sleep, 20
        ClipSaved2 = ;
        sleep, 20
        ClipSaved1 = ;
        sleep, 20
        ClipSaved = ;
        return
    }
}    
    Send, ^v
    sleep, 20
    Send, +{Left}
    sleep, 20
    Send, ^c
    sleep, 20
    clipboard = % charReplaceDict.HasKey(clipboard)? charReplaceDict[clipboard]:clipboard
    Send, ^v
    sleep, 20
    clipboard := ClipSaved
    sleep, 20
    ClipSaved2 = ;
    ClipSaved1 = ;
    sleep, 20
    ClipSaved = ;
return
