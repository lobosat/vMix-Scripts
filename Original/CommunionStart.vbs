dim mode as string = Input.Find("variables.gtzip").Text("ModeCommunion.Text")
dim camera as string = Input.Find("variables.gtzip").Text("CameraCommunion.Text")
dim camera2 as string = Input.Find("variables.gtzip").Text("Cam2Communion.Text")

API.Function("ScriptStart",,"BusBOff")
API.Function("ScriptStart",,"allAudioOff")
Sleep(300)
API.Function("AudioBusOn","Communion Hymn","A")
API.Function("AudioBusOn","Communion Hymn","B")
API.Function("AudioBusOn","Communion Hymn","M")

If mode = "Choir" Then
     API.Function("ScriptStart",Value:="choirOn")
     API.Function("Merge",camera)
     'API.Function("OverlayInput1In","lyrics-communion1")
    ' Prepare the Multiview input with the main camera for the larger box, camera 2 for
    ' the smaller box
     API.Function("SetMultiViewOverlay","MultiView 1",Value:="1," + camera2)
     API.Function("SetMultiViewOverlay","MultiView 1",Value:="2," + camera)
     Sleep(2000)
     API.Function("PreviewInput","MultiView 1")

Elseif mode = "Video" Then
    ' Offertory is a video.  Just video, no live multiview component

     API.Function("AudioAutoOn","Communion Hymn")
     API.Function("AudioOn","Communion Hymn")
     API.Function("Restart","Communion Hymn")
     API.Function("Merge","Communion Hymn",1500)

Elseif mode = "Live" Then

     ' "Live" means just live camera with recording. No video content provided in multiview
     
     API.Function("AudioAutoOff","Communion Hymn")
     API.Function("AudioOn","Communion Hymn")
     API.Function("Restart","Communion Hymn")
     API.Function("Play","Communion Hymn")
     API.Function("Merge",camera,1500)

Elseif mode = "MultiView" Then

     'Start off playing the video, but load the camera into the multiview input.  Place the 
     'multiview in Preview
     API.Function("SetMultiViewOverlay","Communion MV",Value:="1," + camera)
     API.Function("SetMultiViewOverlay","Communion MV",Value:="2,Communion Hymn")
     API.Function("AudioAutoOn","Communion Hymn")
     API.Function("AudioOn","Communion Hymn")
     API.Function("Restart","Communion Hymn")
     API.Function("Merge","Communion Hymn",1500)
     API.Function("Play","Communion Hymn",1500)
     Sleep(2000)
     API.Function("PreviewInput","Communion MV")

End If