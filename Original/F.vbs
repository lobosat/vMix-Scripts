dim text as string = Input.Find("variables.gtzip").Text("F.Text")
dim ipt as string = Input.Find("variables.gtzip").Text("Ov6.Text")
API.Function("SetText",Input:=ipt,Value:=text)
API.Function("OverlayInput1In",Input:=ipt)
API.Function("ScriptStart",Value:="crowdMicOn")