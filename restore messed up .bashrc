Idea: There exist backup copies of .bashrc, .profile etc. in /etc/skel/. So one could replace a corrupt .bashrc simply by overwitting from there.

In Ubuntu, there is a default version of the .bashrc file in the /etc/skel/ directory, so if you have problems with it you can restore it.

To do so follow the next steps:

Backup your current .bashrc file:

cp ~/.bashrc ~/.bashrc.bak
Copy the skeleton .bashrc file over yours:

cp /etc/skel/.bashrc ~/
Afterwards, load the new one:

source ~/.bashrc
