dim inputnum = Input.Find("variables.gtzip").Text("micAltar.Text")
' Console.WriteLine(inputnum)
API.Function("SetDynamicInput1",Value:=inputnum)
API.Function("AudioOn",Input:=inputnum)