dim text as string = Input.Find("variables.gtzip").Text("A.Text")
dim ipt as string = Input.Find("variables.gtzip").Text("Ov1.Text")
API.Function("SetText",Input:=ipt,Value:=text)
API.Function("OverlayInput1In",Input:=ipt)
API.Function("ScriptStart",Value:="crowdMicOn")