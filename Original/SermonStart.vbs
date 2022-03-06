dim josh as string = Input.Find("variables.gtzip").Text("micJosh.Text")
dim judy as string = Input.Find("variables.gtzip").Text("micJudy.Text")
dim mic3 as string = Input.Find("variables.gtzip").Text("mic3.Text")
dim ambo as string = Input.Find("variables.gtzip").Text("micAmbo.Text")
dim em as string = Input.Find("variables.gtzip").Text("micEM.Text")
dim altar as string = Input.Find("variables.gtzip").Text("micAltar.Text")
dim crowd as string = Input.Find("variables.gtzip").Text("micCrowd.Text")

dim mode as string = Input.Find("variables.gtzip").Text("ModeSermon.Text")
dim camera as string = Input.Find("variables.gtzip").Text("CameraSermon.Text")
dim mic as string = Input.Find("variables.gtzip").Text("AudioSermon.Text")

API.Function("AudioOff",josh)
API.Function("AudioOff",judy)
API.Function("AudioOff",mic3)
API.Function("AudioOff",ambo)
API.Function("AudioOff",em)
API.Function("AudioBusOff",crowd,"M")
API.Function("AudioOff",altar)
API.Function("BusXAudioOff",Value:="C")
API.Function("AudioBusOn","Sermon","A")
API.Function("AudioBusOn","Sermon","M")

If mode = "Video" Then
    ' Sermon is a video

    API.Function("AudioAutoOn","Sermon")
    API.Function("AudioOn","Sermon")
    API.Function("Restart","Sermon")
    API.Function("Merge","Sermon",1500)
    Sleep(500)

Elseif mode = "Live" Then
     ' Live camera and mic
     API.Function("AudioOn",mic)
     API.Function("Merge",camera,1500)

End If

     'API.Function("DataSourceSelectRow",Value:="Responses,lectors,3")
     'sleep(100)
     'API.Function("OverlayInput1In",Input:="Lector")
     sleep(4000)
     API.Function("OverlayInput1Out")
