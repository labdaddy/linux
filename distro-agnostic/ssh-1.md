##### SSH COMMANDS

**Install SSH client and server**
- `sudo apt-get install openssh-client` or `sudo -y yum install openssh-client`
-`sudo apt-get install openssh-server` or `sudo -y yum install openssh-server `

**Starting the SSH client or server**


**Creating Keys**
- `ssh-keygen -t rsa -b 8192`. 
- This tells the ssh daemon to create a key of type rsa and the keysize is 8192 bits (huge)
- Enter passphrase: (this must be very very strong, a nonsensical sentence is easy to remember and very hard to crack)
- System will show a randomart image to let you know the passphrase is logged and key created

**To view the key info**
- `ls .ssh/`
- This should return: `id_rsa is_rsa.pub known_hosts`
- The id_rsa is the private key, NEVER EVER share this with anyone or store/ display it in a public place. 
- The id_rsa.pub is the public key and is perfectly safe to share with anyone.

**Send key to another machine using scp**
- `scp .ssh/id_rsa.pub username@remotehost:/path/to/file`
- It will ask for your password, enter it.
- Then the id_rsa.pub file will be displayed on the terminal indicating that it has been copied over.

**Securing the key on the remote machine**
- login to the remote machine and ls -a on the directory you chose to scp the public key into.
- The id_rsa.pub file should be listed along with the .ssh directory
- Then, to secure this you want to make the root user the only one who has any rights to this file with: `chmod -R 700 .ssh`
