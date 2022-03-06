dim mode as string = Input.Find("variables.gtzip").Text("ModeOpening.Text")
dim camera as string = Input.Find("variables.gtzip").Text("CameraOpening.Text")
dim camera2 as string = Input.Find("variables.gtzip").Text("Cam2Opening.Text")

API.Function("DataSourceSelectRow",Value:="Responses,opening hymn,0")

API.Function("Pause","Prelude")
API.Function("Pause","Intro Music List")
API.Function("OverlayInput1Out")
API.Function("OverlayInput2Out")
API.Function("OverlayInput3Out")
API.Function("OverlayInput4Out")
API.Function("AudioBusOn","Opening Hymn","B")

API.Function("StartRecording")

If mode = "Choir" Then
    ' Opening hymn sung by choir and live procession
   
    API.Function("ScriptStart",Value:="choirOn")
    API.Function("Merge",camera)
    'API.Function("OverlayInput1In","lyrics-opening")
    ' Prepare the Multiview input with the main camera for the larger box (1), camera 2 for
    ' the smaller box (2)
    ' API.Function("SetMultiViewOverlay","MultiView 1",Value:="1," + camera2)
    ' API.Function("SetMultiViewOverlay","MultiView 1",Value:="2," + camera)
    
    Sleep(1500)
    API.Function("PreviewInput",Input:=camera2)

ElseIf mode = "Video" Then

    ' Opening is a video
    API.Function("ScriptStart",Value:="allAudioOff")
    Sleep(300)
    API.Function("AudioAutoOn","Opening Hymn")
    API.Function("Restart","Opening Hymn")
    API.Function("AudioBusOn","Opening Hymn","A")
    API.Function("AudioBusOn","Opening Hymn","M")
    API.Function("Merge","Opening Hymn")
    API.Function("Play","Opening Hymn")

ElseIf mode = "Audio" Then

    ' Opening is a recorded hymn and live camera for a procession
    API.Function("ScriptStart",Value:="allAudioOff")
    Sleep(300)
    dim cameraInput as string = Input.Find("variables.gtzip").Text("CameraOpening.Text")
    API.Function("AudioAutoOff","Opening Hymn")
    API.Function("AudioOn","Opening Hymn")
    API.Function("Restart","Opening Hymn")
    API.Function("AudioBusOn","Opening Hymn","A")
    API.Function("AudioBusOn","Opening Hymn","M")
    API.Function("Merge",camera)
    'API.Function("Play","Opening Hymn")
    API.Function("OverlayInput1","Opening Hymn")
    Sleep(2000)
    API.Function("PreviewInput","Opening Hymn")
End If