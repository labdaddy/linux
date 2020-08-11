#### Starting the SSH client or server
**Start client**
- On older distros type: `/etc/init.d/sshd start`
- On newer distros type: `service sshd start`
- On even newer distros that use systemd type: `sudo systemctl start sshd`

**Start server options**
- `sudo /etc/init.d/ssh start`
- `sudo service ssh start`
- For systemd distros: `sudo systemctl start ssh`

##### Restarting SSH client and server

**Restart client**
- On older distros type: `/etc/init.d/sshd restart`
- On newer distros type: `service sshd restart`
- On even newer distros that use systemd type: `sudo systemctl restart sshd`

**Restart server**
- On older distros type: `sudo /etc/init.d/ssh restart`
- On newer distros type: `sudo service ssh restart`
- On even newer distros that use systemd type: `sudo systemctl restart ssh`
