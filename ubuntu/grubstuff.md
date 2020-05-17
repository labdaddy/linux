#### UBUNTU To view grub menu during boot, hold down right shift key
- To edit the grub menu settings type: vi /etc/default/grub
- Change the value in GRUB_TIMEOUT_STYLE to menu
- Change the value on GRUB_TIMEOUT to -1
- Save changes and exit
- Now type sudo update-grub

