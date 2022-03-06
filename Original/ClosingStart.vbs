dim mode as string = Input.Find("variables.gtzip").Text("ModeClosing.Text")
dim camera as string = Input.Find("variables.gtzip").Text("CameraClosing.Text")
dim camera2 as string = Input.Find("variables.gtzip").Text("Cam2Closing.Text")

API.Function("ScriptStart",,"BusBOff")
Sleep(300)
API.Function("AudioBusOn","Closing Hymn","A")
API.Function("AudioBusOn","Closing Hymn","B")
API.Function("AudioBusOn","Closing Hymn","M")

API.Function("ScriptStart",Value:="allAudioOff")
Sleep(200)

If mode = "Choir" Then
     API.Function("ScriptStart",Value:="choirOn")
     'API.Function("OverlayInput1In","lyrics-closing")
     API.Function("Merge",camera)
     Sleep(1500)
     API.Function("PreviewInput",camera2)

Elseif mode = "Live" Then
    ' Closing is a recorded hymn and live camera for a recession
   
    'API.Function("AudioAutoOff","Closing Hymn")
    API.Function("AudioOn","Closing Hymn")
    API.Function("Restart","Closing Hymn")
    API.Function("Merge",camera)
    API.Function("Play","Closing Hymn")
    API.Function("OverlayInput1","Closing Hymn")
    Sleep(2000)
    API.Function("PreviewInput","Closing Hymn")

ElseIf mode = "Video" Then

    ' Closing is a video

    API.Function("AudioAutoOn","Closing Hymn")
    API.Function("Restart","Closing Hymn")
    API.Function("Merge","Closing Hymn")
    API.Function("Play","Closing Hymn")

End If