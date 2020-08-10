#### Starting the SSH client or server
**For the client**
On older distros type: /etc/init.d/sshd restart
On newer distros type: service sshd restart
On even newer distros that use systemd type: sudo systemctl restart sshd

**For the server**

##### Restarting SSH client and server

**For the client**
On older distros type: /etc/init.d/sshd restart
On newer distros type: service sshd restart
On even newer distros that use systemd type: sudo systemctl restart sshd

**For the server**
On older distros type: sudo /etc/init.d/ssh restart
On newer distros type: sudo service ssh restart
On even newer distros that use systemd type: sudo systemctl restart ssh
