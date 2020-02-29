# Linux Tips and Tricks


### Fix a messed up .bashrc file in UBUNTU
In case of accidental .bashrc file mistakery you can restore to default settings from the backup provided by the system.
In Ubuntu the default version of the .bashrc file is stored in the /etc/skel directory.

To fix the messed up .bashrc file:

1 Backup your current .bashrc file with 
```cp ~/.bashrc ~/.bashrc.bak```
2 Then copy the skeleton .bashrc file over the existing screwy one:
  ```cp /etc/skel/.bashrc ~/```
3-Then load the new one:
  ```source ~/.bashrc```


