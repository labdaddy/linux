#### In case of accidental .bashrc file mistakery you can restore to default settings from the backup provided by the system. In Ubuntu the default version of the .bashrc file is stored in the /etc/skel directory.
- Backup your current .bashrc file with cp ~/.bashrc ~/.bashrc.bak
- Then copy the skeleton .bashrc file over the existing screwy one: cp /etc/skel/.bashrc ~/
- Then load the new one: source ~/.bashrc
