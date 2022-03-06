dim mode as string = Input.Find("variables.gtzip").Text("ModePsalm.Text")
dim camera as string = Input.Find("variables.gtzip").Text("CameraPsalm.Text")

API.Function("ScriptStart",,"allAudioOff")
Sleep(300)
API.Function("AudioBusOn","Psalm","A")
API.Function("AudioBusOn","Hebrew Reading","B")
API.Function("AudioBusOn","Psalm","M")

If mode = "Choir" Then
    ' Psalm is sung by Choir.  Overlay with lyrics
    API.Function("ScriptStart",Value:="choirOn")
    API.Function("Merge",camera,1500)

ElseIf mode = "Video" Then
    ' Psalm is a video

    API.Function("AudioAutoOn","Psalm")
    API.Function("AudioOn","Psalm")
    API.Function("Restart","Psalm")
    API.Function("Merge","Psalm",1500)

Elseif mode = "Live" Then
     ' Psalm is recited (usually from ambo)
     dim mic as string = Input.Find("variables.gtzip").Text("AudioPsalm.Text")
     API.Function("Merge",camera,1500)
     API.Function("AudioOn",mic)

End If