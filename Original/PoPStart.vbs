dim mode as string = Input.Find("variables.gtzip").Text("ModePoP.Text")

API.Function("ScriptStart",,"BusBOff")
API.Function("ScriptStart",,"allAudioOff")
Sleep(300)
API.Function("AudioBusOn","Prayers of the People","A")
API.Function("AudioBusOn","Prayers of the People","B")
API.Function("AudioBusOn","Prayers of the People","M")

If mode = "Video" Then
    ' Prayers are a video.  

     API.Function("AudioAutoOn","Prayers of the People")
     API.Function("AudioOn","Prayers of the People")
     API.Function("Restart","Prayers of the People")
     API.Function("Merge","Prayers of the People",1500)

Elseif mode = "Live" Then

     ' "Live" means just live camera with live microphone
     dim camera as string = Input.Find("variables.gtzip").Text("CameraPoP.Text")
     dim mic as string = Input.Find("variables.gtzip").Text("AudioPoP.Text")
     dim micCrowd as string = Input.Find("variables.gtzip").Text("micCrowd")
     API.Function("ScriptStart",Value:="allAudioOff")
     Sleep(500)  ' Give audio off script time to finish, otherwise it will clobber next line
     API.Function("AudioOn",Input:=mic)
     API.Function("Merge",camera,1500)

     sleep(4000)
     API.Function("OverlayInput1Out")
     API.Function("AudioOff",Input:=micCrowd)

End If