dim inputnum = Input.Find("variables.gtzip").Text("micSolo.Text")
API.Function("SetDynamicInput1",Value:=inputnum)
API.Function("AudioOn",Input:=inputnum)