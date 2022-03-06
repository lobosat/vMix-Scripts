dim inputnum = Input.Find("variables.gtzip").Text("AudioGospel.Text")

API.Function("ScriptStart",,"allAudioOff")
Sleep(300)
API.Function("AudioOn",Input:=inputnum)
API.Function("BusXAudioOn",Value:="C")