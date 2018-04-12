charReplaceDict :={"?":"？","？":"?",">":"》","》":">","\":"、","、":"\",",":"，","，":",",".":"。","。":".","<":"《","《":"<","[":"【","【":"[","]":"】","】":"]",";":"；","；":";",":":"：","：":":","^":"……","……":"^","!":"！","！":"!","`":"·","·":"`","$":"￥","￥":"$","(":"（","（":"(",")":"）","）":")","_":"——","——":"_","/":"、","'":"‘’","''":"‘’","‘’":"''","‘":"'","’":"'","""":"“”","""""":"“”","“”":"""""","“":"""","”":""""}

^CapsLock::CapsLock

CapsLock::
    ClipSaved := ClipboardAll
    ClipSaved1 := Clipboard
    sleep, 20
    Send, ^x
    sleep, 20
    ClipSaved2 := Clipboard
    sleep, 20

    if(ClipSaved1 = ClipSaved2){
    Send, +{Left}
    Send, ^x
    sleep, 100
    ClipSaved2 := clipboard
    sleep, 20
    if(ClipSaved1 = ClipSaved2){
        clipboard := ClipSaved
        ClipSaved2 = ;
        ClipSaved1 = ;
        sleep, 20
        ClipSaved = ;
        return
    }
}
    clipboard = % charReplaceDict.HasKey(clipboard)? charReplaceDict[clipboard]:clipboard
    sleep, 20
    Send, ^v
    sleep, 20
    clipboard := ClipSaved
    ClipSaved2 = ;
    ClipSaved1 = ;
    sleep, 20
    ClipSaved = ;
return