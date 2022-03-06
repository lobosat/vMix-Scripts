dim crowdMic = Input.Find("variables.gtzip").Text("micCrowd.Text")
'API.Function("AudioOff",Input:=crowdMic)
API.Function("AudioBusOff",Input:=crowdMic,Value:="M")

API.Function("OverlayInput1Out")

sleep(1000)
API.Function("BusXAudioOff",Value:="C")