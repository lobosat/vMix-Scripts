' Prelude is a slideshow and audio
'API.Function("ScriptStart",Value:="allAudioOff")
'API.Function("ScriptStart",,"BusBOff")
'Sleep(300)
'API.Function("AudioBusOn","Prelude","A")
'API.Function("AudioBusOn","Prelude","B")
'API.Function("AudioBusOn","Prelude","M")
'API.Function("AudioAutoOff","Prelude")
'API.Function("Restart","Prelude")
'API.Function("Restart","Announcements")

'API.Function("StartRecording")

'API.Function("AudioOn","Prelude")
'API.Function("Merge","Announcements")
'Sleep(2000)
'API.Function("PreviewInput","Prelude")
'API.Function("Merge","Announcements")
'API.Function("OverlayInput1","Prelude")

' Live Prelude - camera on Piano
API.Function("OverlayInputAllOff")
API.Function("Merge","Left")
API.Function("ScriptStart",Value:="choirOn")
Sleep(2000)
API.Function("PreviewInput","Right")