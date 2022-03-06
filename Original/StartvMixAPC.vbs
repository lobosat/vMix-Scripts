'Process.Start("C:\vmix\vmixAPC.exe")
Dim p As Process
p = new Process()
p.StartInfo = new ProcessStartInfo("C:\vmix\vmixAPC.exe")
p.StartInfo.Arguments = "--debug=true"
p.StartInfo.WorkingDirectory = "C:\vmix\"
p.StartInfo.WindowStyle = 0
'p.StartInfo.CreateNoWindow = true
p.StartInfo.UseShellExecute = false
p.Start()