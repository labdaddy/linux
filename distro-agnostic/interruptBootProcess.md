#### To Recover the root password
- Reboot the machine with: `reboot` command
- Press up or down arrow to pause the grub menu
- Press the 'e' key to edit the grub entry
- Scroll down to the line that begins with 'linux 16'
- Skip to the end of the line with: `ctrl-e`
- Delete the last two words, 'rhgb' and 'quiet' so you can watch the boot process.
- Add the following: `rd.break` `enforcing=0` which will stop the boot process after it has completed the ram disk phase and tell SELinux to enter permissive mode so we can make changes to the password file outside of the normal environment.
- Continue the boot process by typing: `ctrl-x`
- Boot process will continue but only up to the point where you have access to the new prompt which comes right after the ram disk phase. The new prompt looks like this: `switch_root:/#` 
- `Ctrl-l` will put your prompt back up at the top of the screen for easy viewing while typing
- Currently the filesystem is mounted as read-only and needs to be remounted as read-write. 

Type: `mount -o remount,rw /sysroot` and press enter.
- Then create a false root that points to the sysrot directory: `chroot /sysroot`
- The prompt changes to `sh-4.2` (or something similar, indicating the kernel version)
- At the new prompt type: `passwd` to reset the root password
- Type a new password and press enter
- Exit out of the chroot environment with: `exit`
- Retrieve the previous mount command with the up arrow and change it to back to read-only with: `mount -o remount,ro /sysroot`
- Now continue the boot process with: `exit`
- Now we get the standard prompt where we will enter our root password
- Enter your root password and voila! we are in business.
- Next we changed the security context during this process (earlier when we added the `enforcing=o` line in the grub file) so it will need to be changed back with: `restorecon /etc/shadow` and press enter
- Next to return to enforcing mode in selinux, type: `setenforce 1`
