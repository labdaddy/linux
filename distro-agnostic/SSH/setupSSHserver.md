### SSH Secure Setup (key based not password based)

##### High level summary
1. Create a client SSH key with the `ssh-keygen` command
2. Make sure remote server can accept key based authentication
3. Remove option for password based authentication (for greater security)
4. Share the client public key with the server in the USERS home directory (`/.ssh/authorized_keys`)

##### Install SSH client and server
- `sudo apt-get install openssh-client` or 
- `sudo -yum -y install openssh-client`
- `sudo apt-get install openssh-server` or 
- `sudo yum -y install openssh-server `


##### Creating Keys
- `ssh-keygen -t rsa -b 8192`. 
- This tells the ssh daemon to create a key of type rsa and the keysize is 8192 bits (huge)
- Enter passphrase: (this must be very very strong, a nonsensical sentence is easy to remember and very hard to crack)
- System will show a randomart image to let you know the passphrase is logged and key created

##### To view the key info
- `ls .ssh/`
- This should return: `id_rsa is_rsa.pub known_hosts`
- The id_rsa is the private key, NEVER EVER share this with anyone or store/ display it in a public place. 
- The id_rsa.pub is the public key and is perfectly safe to share with anyone.

##### Send key to another machine using scp
- `scp .ssh/id_rsa.pub username@remotehost:/path/to/file`
- It will ask for your password, enter it.
- Then the id_rsa.pub file will be displayed on the terminal indicating that it has been copied over.

##### Send key to another machine using ssh-copy-id
- `ssh-copy-id` `-i` `~/.ssh/id_rsa.pub` `192.168.100.25 ` (enter the target machine ip address)
- Machine will ask for your password
- Then machine will note that 1 key was added
- Now to test, ssh into the target machine with: `ssh 10.24.167.41` or whatever the target machine's IP address is.
- You should be granted access directly to the machine with NO password request.

##### Securing the key on the remote machine
- login to the remote machine and ls -a on the directory you chose to scp the public key into.
- The id_rsa.pub file should be listed along with the .ssh directory
- Then, to secure this you want to make the root user the only one who has any rights to this file with: `chmod -R 700 .ssh`

##### Copy the key (on remote machine) to authorized file
- `cp id_rsa.pub .ssh/authorized_keys`

##### Turnoff password based logins
- open the /etc/ssh/sshd_config in your text editor
- move down to the Port line and change to 443. This allows us to use the server for tunneling such as a SOCKS proxy
- use the search function in your editor to search for ChallengeResponse and mv to the ChallengeResponseAuthentication line and make sure it is no
- move down to PasswordAuthentication and change that to no as well
- move down to the UsaPAM line and make sure it is also set to no

##### Make the changes stick
- `sudo service ssh restart`
- verify with netstat -tulpn, should return a connection listing port 22 as LISTEN


##### Make sure password based authentication is BLOCKED and only key based ALLOWED
- ssh to the remote machine
- enter the password. Server should respond with `Permission denied (publickey).`
- ssh to this machine again and this time enter the passphrase you setup for the public key. Now the server should allow access.
