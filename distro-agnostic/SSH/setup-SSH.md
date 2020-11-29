### SSH Secure Setup using keys not passwords

##### High level summary
1. Create a client SSH key with the `ssh-keygen` command and either large RSA keys or even more secure ed255519 keys.
2. Make sure remote server can accept key based authentication
3. Remove option for password based authentication (for greater security)
4. Share the client public key with the server in the USERS home directory (`/.ssh/authorized_keys`)

##### Install SSH client and server
- `sudo apt-get install openssh-client` or 
- `sudo -yum -y install openssh-client`
- `sudo apt-get install openssh-server` or 
- `sudo yum -y install openssh-server `

##### Start, stop, restart, check status and enable at startup - SSH

**Start**
- `sudo systemctl start ssh` or
- `sudo service sshd start` or
- `sudo /etc/init.d/ssh start`

**Stop**
- `sudo systemctl stop ssh` or
- `sudo service sshd stop` or
- `sudo /etc/init.d/ssh stop`

**Restart**
- `sudo systemctl restart ssh`
- `sudo service ssh restart`
- `sudo /etc/init.d/ssh restart`

**Check Status**
- `sudo systemctl status ssh`
- `sudo service ssh status`
- `sudo /etc/init.d/ssh status`

**Enable at startup**
- `sudo systemctl enable sshd`

##### To check all keys on the machine
- `for key in ~/.ssh/id_*; do ssh-keygen -l -f "${key}"; done | uniq`

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

##### Creating basic keys with RSA (4096 bit key size)
- `ssh-keygen -t rsa -b 4096`. Note that the key size should never be less than 4096 bits in size.
- This tells the ssh daemon to create a key of type rsa and the keysize is 4096 bits (large)
- Enter passphrase: This must be very very strong. A nonsensical sentence made up of five or more words is easy to remember and very hard to crack.
- System will show a randomart image to let you know the passphrase is logged and key created

##### Creating more secure keys with ed25519 algorithm
- `ssh-keygen -o -a 100 -t ed25519 -f ~/.ssh/id_ed25519 -C "john@example.com"`
- You’ll be asked to enter a passphrase for this key, use a strong one. You can also use the same passphrase like any of your old SSH keys but in either case this must be very very strong. A nonsensical sentence made up of five or more words is easy to remember and very hard to crack. Breakdown of flags:
- -o : Save the private-key using the new OpenSSH format rather than the PEM format. Actually, this option is implied when you specify the key type as ed25519.
- -a: Provides the number of KDF (Key Derivation Function) rounds. Higher numbers result in slower passphrase verification, increasing the resistance to brute-force password cracking should the private-key be stolen.
- -t: Specifies the type of key to create, in our case the Ed25519.
- -f: Specifies the filename of the generated key file. If you want it to be discovered automatically by the SSH agent, it must be stored in the default `.ssh` directory within your home directory.
- -C: Specifies a comment. It’s purely informational and can be anything. But it’s usually filled with <login>@<hostname> who generated the key.

##### Additional ed25519 information
- The newly generated private key is stored at `~/.ssh/id_ed25519` and the public key at `~/.ssh/id_ed25519.pub`. 
- Before adding your new private key to the SSH agent, make sure that the SSH agent is running by executing the following command: `eval "$(ssh-agent -s)"`
- Then run the following command to add your newly generated Ed25519 key to SSH agent: `ssh-add ~/.ssh/id_ed25519`
- Or if you want to add all of the available keys under the default .ssh directory, simply run: `ssh-add`
