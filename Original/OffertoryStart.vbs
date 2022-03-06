dim mode as string = Input.Find("variables.gtzip").Text("ModeOffertory.Text")
dim camera as string = Input.Find("variables.gtzip").Text("CameraOffertory.Text")
dim camera2 as string = Input.Find("variables.gtzip").Text("Cam2Offertory.Text")
   

API.Function("ScriptStart",,"BusBOff")
API.Function("ScriptStart",,"allAudioOff")
Sleep(300)
API.Function("AudioBusOn","Offertory Anthem","A")
API.Function("AudioBusOn","Offertory Anthem","B")
API.Function("AudioBusOn","Offertory Anthem","M")

If mode = "Choir" Then
    ' Offertory hymn sung by choir. Live camera

    API.Function("ScriptStart",Value:="choirOn")
    API.Function("Merge",camera)
    'API.Function("OverlayInput1In","lyrics-offertory")
    ' Prepare the Multiview input with the main camera for the smaller box, camera 2 for
    ' the larger box
     API.Function("SetMultiViewOverlay","MultiView 1",Value:="1," + camera)
     API.Function("SetMultiViewOverlay","MultiView 1",Value:="2," + camera2)
     Sleep(2000)
     API.Function("PreviewInput","MultiView 1")
    

Elseif mode = "Video" Then
    ' Offertory is a video.  Just video, no live multiview component

     API.Function("AudioAutoOn","Offertory Anthem")
     API.Function("AudioOn","Offertory Anthem")
     API.Function("Restart","Offertory Anthem")
     API.Function("Merge","Offertory Anthem",1500)

Elseif mode = "Live" Then

     ' "Live" means just live camera with recording. No video content provided in multiview
     API.Function("AudioAutoOff","Offertory Anthem")
     API.Function("AudioOn","Offertory Anthem")
     API.Function("Restart","Offertory Anthem")
     API.Function("Play","Offertory Anthem")
     API.Function("Merge",camera,1500)

Elseif mode = "MultiView" Then

     'Start off playing the video, but load the camera into the multiview input.  Place the 
     'multiview in Preview
     
     API.Function("SetMultiViewOverlay","MultiView 1",Value:="2," + camera)
     API.Function("AudioAutoOn","Offertory Anthem")
     API.Function("AudioOn","Offertory Anthem")
     API.Function("Restart","Offertory Anthem")
     API.Function("Merge","Offertory Anthem",1500)
     Sleep(2000)
     API.Function("PreviewInput","MultiView 1")

End If