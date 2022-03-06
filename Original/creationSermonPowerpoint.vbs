dim xml as String = API.XML()
dim x as new system.xml.xmldocument
x.loadxml(xml)

dim active as String = ""
active = (x.SelectSingleNode("//active").InnerXML)

If active = "44" Then
   'Sermon MV is active, so switch back to normal mode
   API.Function("SetOutputFullscreen",Value:="Output")
   API.Function("Merge",Input:="Left")
Else
   'Change fullscreen to the powerpoint, and send out the MV to livestream
   API.Function("SetOutputFullscreen",Value:="Input",Input:="Creation Sermon Powerpoint")
   API.Function("Merge",Input:="Sermon MV")
End If