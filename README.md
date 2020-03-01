# Linux Tips and Tricks


### Fix a messed up .bashrc file in UBUNTU
In case of accidental .bashrc file mistakery you can restore to default settings from the backup provided by the system.
In Ubuntu the default version of the .bashrc file is stored in the /etc/skel directory.

To fix the messed up .bashrc file:

1. Backup your current .bashrc file with 
```cp ~/.bashrc ~/.bashrc.bak```
2. Then copy the skeleton .bashrc file over the existing screwy one:
  ```cp /etc/skel/.bashrc ~/```
3. Then load the new one:
  ```source ~/.bashrc```


### Check drive partitions and drive storage
# fdisk
This will show the partitions but also a bunch of the loops involved in device mounting and the output will be hard to read.

# sfdisk
Similar output and can also display the size of paritions in mb

# cfdisk (curses based)
Output will be in a clear table format listing the: device(partition name)/ start sector/ end sector/ total sectors on the partition/ total partition size and filesystem type.
This outpt is clear, concise and immediately useful.

# parted
Command line utility for partition manipulation. Beyond the scope of this tips document.

# df
Disk Free. Outputs filesystem informatio, size of the partition, storage used/ available/ % used/ partition mounted on.

# pydf
ALmost identical to df but more visually appealing. With colors

# lsblk
This command lists out all the storage blocks, which includes disk partitions and optical drives including the mount point and size of the drive

# blkid
Prints the block device (partitions and storage media) attributes like uuid and file system type. Does not report the space on the partitions.

# hwThe 
The hwinfo command is a general purpose hardware information tool and can be used to print out the disk and partition list. The output however does not print details about each partition like some of the other commands above

