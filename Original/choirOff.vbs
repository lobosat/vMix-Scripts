dim choir1 as string = Input.Find("variables.gtzip").Text("micChoir1.Text")
dim choir2 as string = Input.Find("variables.gtzip").Text("micChoir2.Text")
dim choir3 as string = Input.Find("variables.gtzip").Text("micChoir3.Text")
dim solo as string = Input.Find("variables.gtzip").Text("micSolo.Text")

API.Function("AudioOff",choir1)
API.Function("AudioOff",choir2)
API.Function("AudioOff",choir3)
API.Function("AudioOff",solo)
API.Function("BusXAudioOff",Value:="C")