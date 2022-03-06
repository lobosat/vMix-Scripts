dim josh as string = Input.Find("variables.gtzip").Text("micJosh.Text")
dim judy as string = Input.Find("variables.gtzip").Text("micJudy.Text")
dim mic3 as string = Input.Find("variables.gtzip").Text("mic3.Text")
dim ambo as string = Input.Find("variables.gtzip").Text("micAmbo.Text")
dim em as string = Input.Find("variables.gtzip").Text("micEM.Text")
dim altar as string = Input.Find("variables.gtzip").Text("micAltar.Text")
dim crowd as string = Input.Find("variables.gtzip").Text("micCrowd.Text")

API.Function("BusXAudioOff",Value:="C")

dim mic as string = Input.Find("variables.gtzip").Text("AudioPeace.Text")
API.Function("AudioOff",ambo)
API.Function("AudioOn",mic)
API.Function("Merge","Center")