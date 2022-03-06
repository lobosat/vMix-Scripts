dim inputnum = Input.Find("variables.gtzip").Text("AudioEucharist.Text")
API.Function("ScriptStart",,"allAudioOff")
Sleep(300)
API.Function("AudioOn",Input:=inputnum)