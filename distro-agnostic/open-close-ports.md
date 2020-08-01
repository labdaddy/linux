##### Open and close ports
First check open ports: `ss -lntu`
This will output the ports your machine is currently listening to.
Next, search for the port you want to open just in case: `ss -na | grep :9090`
There should be no output.

Ubuntu
`sudo ufw allow 9090`
You will be asked for sudo password. Enter it now.
Then you should recieve a success message.
NOTE: This is a temporary change. Listening ports will return to default on reboot. To make it permanent add the --permament flag
`sudo ufw allow 9090 --permanent`

CentOS/ RHEL
`firewall-cmd --add-port=9090/tcp`
You will be asked for sudo password. Enter it now.
Then you should recieve a success message.
NOTE: This is a temporary change. Listening ports will return to default on reboot. To make it permanent add the --permament flag
`firewall-cmd --add-port=4000/tcp --permanent`

Test the newly opened port to verify using netcat (nc): `ls | nc -l -p 9090`
This makes netcat listen on port 9090. Leave this session alone for now.
Open another terminal session on the same machine.

Since I’ve opened a TCP port, I’ll use telnet to check for TCP Connectivity. If the command doesn’t exists, again, install it using your package manager.

Format for telnet:
`telnet [hostname/IP address] [port number]`
So the following command will the machine to open a TCP connection on port 9090 `telnet localhost 9090`
There should be some output indicating port is now opened.
Now verify: `nmap localhost -p 9090`
