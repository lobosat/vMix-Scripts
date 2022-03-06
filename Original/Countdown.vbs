' Checking time left of active running video and display this as an title. 
' and do some stuff at certain time remaining

dim position as string = ""
dim duration as string = ""
dim title as string = ""
dim activeinput as string = ""
dim Timeleft as double = 0
dim triggertime as integer = 10      '10 seconds before end
dim triggerduration as integer = 2000   'fade duration, could be different than trigger

do while true

    dim xml as string = API.XML()
    dim x as new system.xml.xmldocument
    x.loadxml(xml)

    activeinput = (x.SelectSingleNode("//active").InnerText)
    duration = (x.SelectSingleNode("//input[@number='"& activeinput &"']/@duration").Value)
    position = (x.SelectSingleNode("//input[@number='"& activeinput &"']/@position").Value)
    title = (x.SelectSingleNode("//input[@number='"& activeinput &"']/@title").Value)
    API.Function("SetMultiViewOverlay","Countdown",Value:="1," + activeinput)

    if duration > 0

        Timeleft= Double.Parse(duration)-Double.Parse(position)

        Timeleft = Timeleft / 100

        dim Timingleft as integer = CInt(Timeleft)
        Timingleft = Timingleft / 10

        dim Minutes as integer = Timingleft \ 60
        dim Seconds as integer = Timingleft Mod 60

        'used at debugging stage
        ' console.writeline(Timingleft)
        ' console.writeline(Seconds)

        dim ThisTime as string 
        ThisTime = Minutes.ToString("00") + ":" + Seconds.ToString("00")

        
        API.Function("SetText",Input:="CD Display",SelectedName:="title.Text" ,Value:=title)
        API.Function("SetText",Input:="CD Display",SelectedName:="time.Text" ,Value:=Timingleft) ' Value:=":", Value:=Seconds)

        if Timingleft < 60
        'put a response in a title and change color accordingly
        
            if Timingleft < 30 
            API.Function("SetImageVisibleOn",Input:="CD Display",SelectedName:="red.Source")
            API.Function("SetImageVisibleOff",Input:="CD Display",SelectedName:="yellow.Source")
            API.Function("SetImageVisibleOff",Input:="CD Display",SelectedName:="green.Source")
            API.Function("SetImageVisibleOff",Input:="CD Display",SelectedName:="small.Source")

            else
            API.Function("SetImageVisibleOn",Input:="CD Display",SelectedName:="yellow.Source")
            API.Function("SetImageVisibleOff",Input:="CD Display",SelectedName:="red.Source")
            API.Function("SetImageVisibleOff",Input:="CD Display",SelectedName:="green.Source")
            API.Function("SetImageVisibleOff",Input:="CD Display",SelectedName:="small.Source")
            end if  
        else
            API.Function("SetImageVisibleOn",Input:="CD Display",SelectedName:="green.Source")
            API.Function("SetImageVisibleOff",Input:="CD Display",SelectedName:="red.Source")
            API.Function("SetImageVisibleOff",Input:="CD Display",SelectedName:="yellow.Source")
            API.Function("SetImageVisibleOff",Input:="CD Display",SelectedName:="small.Source")
        end if


        sleep(50)

    else

        API.Function("SetImageVisibleOff",Input:="CD Display",SelectedName:="green.Source")
        API.Function("SetImageVisibleOff",Input:="CD Display",SelectedName:="red.Source")
        API.Function("SetImageVisibleOff",Input:="CD Display",SelectedName:="yellow.Source")
        API.Function("SetImageVisibleOn",Input:="CD Display",SelectedName:="small.Source")
        API.Function("SetText",Input:="CD Display",SelectedName:="time.Text" ,Value:=" ")
        API.Function("SetText",Input:="CD Display",SelectedName:="title.Text" ,Value:=title)

    end if
Loop