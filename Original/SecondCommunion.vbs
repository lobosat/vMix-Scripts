dim mode as string = Input.Find("variables.gtzip").Text("ModeCommunion.Text")

API.Function("ScriptStart",,"BusBOff")
API.Function("ScriptStart",,"allAudioOff")
Sleep(300)
API.Function("AudioBusOn","Second Communion Hymn","A")
API.Function("AudioBusOn","Communion Hymn","B")
API.Function("AudioBusOn","Second Communion Hymn","M")


     'Start off playing the video, but load the camera into the multiview input.  Place the 
     'multiview in Preview
     
     dim camera as string = Input.Find("variables.gtzip").Text("CameraCommunion.Text")
     
     API.Function("SetMultiViewOverlay","Offertory MV",Value:="1," + camera)
     API.Function("SetMultiViewOverlay","Offertory MV",Value:="2,Second Communion Hymn")
     API.Function("AudioAutoOn","Second Communion Hymn")
     API.Function("AudioOn","Second Communion Hymn")
     API.Function("Restart","Second Communion Hymn")
     API.Function("Merge","Second Communion Hymn",1500)
     API.Function("Play","Second Communion Hymn",1500)
     Sleep(2000)
     API.Function("PreviewInput","Offertory MV")


