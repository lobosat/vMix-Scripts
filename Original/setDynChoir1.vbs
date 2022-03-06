dim inputnum = Input.Find("variables.gtzip").Text("micChoir1.Text")
API.Function("SetDynamicInput1",Value:=inputnum)
API.Function("AudioOn",Input:=inputnum)