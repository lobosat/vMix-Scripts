dim stat as string = Input.Find("variables.gtzip").Text("blanked.Text")

Console.WriteLine(stat)

If stat = "yes" Then
    API.Function("SetOutputFullscreen",Value:="Output")
    Input.Find("variables.gtzip").Text("blanked.Text") = "no"
Else
    API.Function("SetOutputFullscreen",Value:="Input",Input:="Blank")
    Input.Find("variables.gtzip").Text("blanked.Text") = "yes"
End if

' API.Function("SetOutputFullscreen",Input:="Active",Value:="Output")

'FUNCTION SetOutputFullscreen Value=Output
'FUNCTION SetOutputFullscreen Value=Input&Input=Blank