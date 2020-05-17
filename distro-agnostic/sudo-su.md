#### su vs su -
NOTE: for the official business see the [sudo website](https://www.sudo.ws/man/1.8.28/sudo.man.html) for their in depth documentation.
- `su` by itself switches the user, providing a normal shell with an environment nearly the same as with the old user except now with elevated priveleges.
- `su -` invokes a login shell after switching the user. A login shell resets most environment variables, providing a clean base and the evironment of the root user.
- `sudo –b` will run the command in the background.  This is useful for commands that display a lot of output as they are running.
- `sudo –s` will run the shell specified with elevated privlages, giving you the # prompt (don’t forget to exit!)
- `sudo su` will make you the root user and load your custom user environment variables.

#### sudo bang bang
- `sudo !!` 
This will repeat the last command with sudo priveleges so you don't have to re-write it.
