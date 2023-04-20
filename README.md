# BadUSBReverseShell

This is how to do a Reverse Shell attack using the HAK5 Rubbery Ducky USB and a cloud server of your choice. Works Using linux machine to attack MS Windows 10/11
USING NETCAT & PYTHON

1. On your host server crreate a file called ReverseShell.ps1 and upload the one line string from ReverseShell.ps1 into the file. Change the IP Address to match your machines. You can change the port if you'd like but it's not necesasry. (Current Port: 553)

2. Upload the payload.txt file to your Rubber Ducky. Change the IP Address to match your host machines. If you changed the Port in step 1, do it again here.(Current Port: 553)

3. On your host machine in the directory you created the file, ReverseShell.ps1, type the command "python3 -m http.server 80" (WITHOUT QUOTATIONS). This will host a python web server from your current directory.

4. In another tab on your host machine, type the command "nc -nvlp 553" (WITHOUT QUOTATIONS). This will run netcat and allow you to listen for any incoming requests on port 553. (If you chnaged the port earlier, change it again here)

5. Plug in your Ducky USB into a MS Windows 10/11 machine and after a few seconds, you'll get a message on the host machine in the NetCat tab letting you know a connection was receieved and from where. Enjoy!
