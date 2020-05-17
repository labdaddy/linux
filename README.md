###su - vs su
- su - invokes a login shell after switching the user. A login shell resets most environment variables, providing a clean base.
- su just switches the user, providing a normal shell with an environment nearly the same as with the old user.

You can use one of the following command to find the number of physical CPU cores including all cores on Linux:
- lscpu command.
- cat /proc/cpuinfo.
- top or htop command.
- nproc command.
- hwinfo command.
- dmidecode -t processor command.
- getconf _NPROCESSORS_ONLN command.
