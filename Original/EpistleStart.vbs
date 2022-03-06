dim mode as string = Input.Find("variables.gtzip").Text("ModeEpistle.Text")

API.Function("ScriptStart",,"allAudioOff")
Sleep(300)

Console.WriteLine(mode)
If mode = "Video" Then
    ' Epistle is a video
     API.Function("AudioBusOn","Epistle","A")
    'API.Function("AudioBusOn","Hebrew Reading","B")
    API.Function("AudioBusOn","Epistle","M")
    API.Function("AudioAutoOn","Epistle")
    API.Function("AudioOn","Epistle")
    API.Function("Restart","Epistle")
    API.Function("Merge","Epistle",1500)
    Sleep(4500)
    API.Function("OverlayInput1Out")


Elseif mode = "Live" Then
     ' Live camera and mic

     dim camera as string = Input.Find("variables.gtzip").Text("CameraEpistle.Text")
     dim mic as string = Input.Find("variables.gtzip").Text("AudioEpistle.Text")
     API.Function("Merge",camera,1500)
     API.Function("ScriptStart",Value:="allAudioOff")
     Sleep(500)  ' Give audio off script time to finish, otherwise it will clobber next line
     'API.Function("DataSourceSelectRow",Value:="Responses,lectors,1")
     'sleep(100)
     API.Function("AudioOn",mic)
     'API.Function("OverlayInput1In",Input:="Lector")
     sleep(3000)
     API.Function("OverlayInput1Out")


End If