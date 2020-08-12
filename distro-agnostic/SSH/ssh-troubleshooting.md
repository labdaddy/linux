#### SSH TROUBLESHOOTING

ERROR: Permission denied (publickey, gssapi-keyex, gssapi-with-mic,password)

In short, the solution is most likely a simple configuration change in the sshd_config file.

Possible solutions found online:
"The issue is within your sshd_config file.

Here is the ULTIMATE solution to this issue:

Log as root to your Ubuntu server
Use vim or nano to edit the contents of /etc/ssh/sshd_config
Eg. vi /etc/ssh/sshd_config or nano /etc/ssh/sshd_config
Now go to the very bottom of the file (to the line with PasswordAuthentication) - Change the value next to PasswordAuthentication from no to yes.
It should now look like this:

# Change to no to disable tunnelled clear text passwords
PasswordAuthentication yes
Save the file and then run the following command to reload the SSH config:
sudo service sshd reload
With this done, you can now set up your new SSH key for your LOCAL device.
To do this, you can run the following from your LOCAL device, not the server:

ssh-copy-id username@droplet.ip
(Make sure to replace username with your username on the droplet and droplet.ip with the full IP address of your droplet)

With this done, you should be good to go, connecting with SSH keys!"

