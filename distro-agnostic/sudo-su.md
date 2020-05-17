## su vs su -
NOTE: for the official business see the [sudo website](https://www.sudo.ws/man/1.8.28/sudo.man.html) for their in depth documentation.
From the sudo website:
Sudo in a Nutshell
Sudo (su "do") allows a system administrator to give certain users (or groups of users) the ability to run some (or all) commands as root while logging all commands and arguments. Sudo operates on a per-command basis, it is not a replacement for the shell. Its features include:

    The ability to restrict what commands a user may run on a per-host basis.

    Sudo does copious logging of each command, providing a clear audit trail of who did what. When used in tandem with syslogd, the system log daemon, sudo can log all commands to a central host (as well as on the local host). At CU, all admins use sudo in lieu of a root shell to take advantage of this logging.

    Sudo uses timestamp files to implement a "ticketing" system. When a user invokes sudo and enters their password, they are granted a ticket for 5 minutes (this timeout is configurable at compile-time). Each subsequent sudo command updates the ticket for another 5 minutes. This avoids the problem of leaving a root shell where others can physically get to your keyboard. There is also an easy way for a user to remove their ticket file, useful for placing in a .logout file.

    Sudo's configuration file, the sudoers file, is setup in such a way that the same sudoers file may be used on many machines. This allows for central administration while keeping the flexibility to define a user's privileges on a per-host basis. Please see the samples sudoers file below for a real-world example. 

To get a good idea of what sudo can do, you really need to take a look at a [sample sudoers file](https://www.sudo.ws/sample.sudoers). The [sudoers manual](https://www.sudo.ws/man/sudoers.man.html) explains the syntax in detail.

There is also a nice [slide show](http://www.komar.org/pres/sudo/) on how to use sudo in a large, heterogeneous environment.

- `su` by itself switches the user, providing a normal shell with an environment nearly the same as with the old user except now with elevated priveleges.
- `su -` invokes a login shell after switching the user. A login shell resets most environment variables, providing a clean base and the evironment of the root user.
- `sudo –b` will run the command in the background.  This is useful for commands that display a lot of output as they are running.
- `sudo –s` will run the shell specified with elevated privlages, giving you the # prompt (don’t forget to exit!)
- `sudo su` will make you the root user and load your custom user environment variables.

#### sudo bang bang
- `sudo !!` 
This will repeat the last command with sudo priveleges so you don't have to re-write it.
