Idea: There exist backup copies of .bashrc, .profile etc. in /etc/skel/. So one could replace a corrupt .bashrc simply by overwitting from there.

Caution: if you replace the .bashrc file with a fresh one, it will remove any other modification(s) you have made to it. For example, one could add aliases, custom function or PATH in .bashrc. When you replace the file, all those modifications will be lost. Better you can keep a copy of your modified .bashrc before replacing it. Later, you can carefully extract the required part from it. To keep a backup copy of your modified .bashrc in your home directory with name my_bashrc use the following in a terminal,

/bin/cp ~/.bashrc ~/my_bashrc
Why /bin/cp: In case if you have messed with your $PATH variable when changed ~/.bashrc all the executable will be unavailable from your terminal and cp will not work anymore. So it is recommended to call cp with its full path as /bin/cp while you are trying to copy something with corrupt ~/.bashrc.

Finally, use the following command in your terminal to replace the ~/.bashrc with a fresh copy,

/bin/cp /etc/skel/.bashrc ~/

It will replace your corrupt ~/.bashrc with a fresh one. After that, you need to source the ~/.bashrc so that the change takes place immediately, write in the terminal,

. ~/.bashrc
or,

source ~/.bashrc
