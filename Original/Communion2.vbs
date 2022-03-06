dim mode as string = Input.Find("variables.gtzip").Text("ModeCommunion.Text")
dim camera as string = Input.Find("variables.gtzip").Text("CameraCommunion.Text")
dim camera2 as string = Input.Find("variables.gtzip").Text("Cam2Communion.Text")

API.Function("OverlayInput1Out")
API.Function("OverlayInput2Out")
API.Function("OverlayInput3Out")
API.Function("OverlayInput4Out")
API.Function("AudioBusOn","Communion Hymn","B")


If mode = "Choir" Then
    ' Opening hymn sung by choir and live procession
   
    API.Function("ScriptStart",Value:="choirOn")
    API.Function("Merge",camera)
    API.Function("OverlayInput1In","lyrics-communion1")
    ' Prepare the Multiview input with the main camera for the larger box (1), camera 2 for
    ' the smaller box (2)
     API.Function("SetMultiViewOverlay","MultiView 1",Value:="1," + camera2)
     API.Function("SetMultiViewOverlay","MultiView 1",Value:="2," + camera)
    
    Sleep(1500)
    API.Function("PreviewInput","MultiView 1")

ElseIf mode = "Video" Then

    ' Opening is a video
    API.Function("ScriptStart",Value:="allAudioOff")
    Sleep(300)
    API.Function("AudioAutoOn","Communion Hymn")
    API.Function("Restart","Communion Hymn")
    API.Function("AudioBusOn","Communion Hymn","A")
    API.Function("AudioBusOn","Communion Hymn","M")
    API.Function("Merge","Communion Hymn")
    API.Function("Play","Communion Hymn")

ElseIf mode = "Audio" Then

    ' Opening is a recorded hymn and live camera for a procession
    API.Function("ScriptStart",Value:="allAudioOff")
    Sleep(300)
    dim cameraInput as string = Input.Find("variables.gtzip").Text("CameraOpening.Text")
    API.Function("AudioAutoOff","Opening Hymn")
    API.Function("AudioOn","Communion Hymn")
    API.Function("Restart","Communion Hymn")
    API.Function("AudioBusOn","Communion Hymn","A")
    API.Function("AudioBusOn","Communion Hymn","M")
    API.Function("Merge",camera)
    'API.Function("Play","Communion Hymn")
    API.Function("OverlayInput1","Communion Hymn")
    Sleep(2000)
    API.Function("PreviewInput","Communion Hymn")
End If