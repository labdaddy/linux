#### In Ubuntu the default version of the .bashrc file is stored in the /etc/skel directory. In case of accidental .bashrc file mistakery you can always restore the messed up .bashrc file to the default settings from the backup provided by the system (in `/etc/skel`)
- Backup your current .bashrc file with cp .bashrc .bashrc-backup
- Then copy the skeleton .bashrc file over the existing screwy one: cp /etc/skel/.bashrc ~/
- Then load the new one: source ~/.bashrc
