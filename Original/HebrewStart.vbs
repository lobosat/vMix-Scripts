dim mode as string = Input.Find("variables.gtzip").Text("ModeHebrew.Text")

API.Function("ScriptStart",,"BusBOff")
API.Function("ScriptStart",,"allAudioOff")
Sleep(300)
API.Function("AudioBusOn","Hebrew Reading","A")
API.Function("AudioBusOn","Hebrew Reading","B")
API.Function("AudioBusOn","Hebrew Reading","M")


If mode = "Video" Then
    ' Hebrew reading is a video

    API.Function("AudioAutoOn","Hebrew Reading")
    API.Function("AudioOn","Hebrew Reading")
    API.Function("Restart","Hebrew Reading")
    API.Function("Merge","Hebrew Reading",1500)

Elseif mode = "Live" Then
     dim camera as string = Input.Find("variables.gtzip").Text("CameraHebrew.Text")
     dim mic as string = Input.Find("variables.gtzip").Text("AudioHebrew.Text")
     API.Function("Merge",camera,1500)
     API.Function("ScriptStart",Value:="allAudioOff")
     Sleep(500)  ' Give audio off script time to finish, otherwise it will clobber next line
     API.Function("AudioOn",mic)
     'API.Function("DataSourceSelectRow",Value:="Responses,lectors,0")
     'sleep(100)
     'API.Function("OverlayInput1In",Input:="Lector")
     sleep(3000)
     API.Function("OverlayInput1Out")

     API.Function("AudioOn",mic)

End If