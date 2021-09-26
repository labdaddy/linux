#### To add a member to the sudoers file in RHEL/ Centos
- The user actually needs to be added to the `wheel` group
- Enter `usermod -aG wheel username`
- Then you can test with `sudo whoami` which should output `root`

#### Actual sudoers file
- To accomplish this with more granular control go to the config file in `/etc/sudoers`
- To actually edit this file you need to use a special `sudo` command called `visudo`
- The command `visudo` should open the config file at `/etc/sudoers` automatically
- Then scroll down to the bottom of the file and enter `username  ALL=(ALL) NOPASSWD:ALL`
- Then save the file and exit
