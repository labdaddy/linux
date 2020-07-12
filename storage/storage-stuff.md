### Interrogate the system for drive partition and storage info
#### fdisk
- This will show the partitions but also a bunch of the loops involved in device mounting and the output will be hard to read.
#### sfdisk
- Similar output and can also display the size of paritions in mb
#### cfdisk (curses based)
- Output will be similar to fdisk and sfdisk above but in a nice table format listing the: device(partition name)/ start sector/ end sector/ total sectors on the partition/ total partition size and filesystem type.
- This outpt is clear, concise and immediately useful.
#### parted
- Command line utility for partition manipulation. Beyond the scope of this tips document.
#### df
- Disk Free. Outputs filesystem information, size of the partition, storage used/ storage available/ % used/ partition mounted on etc
#### pydf
- Almost identical to df but more visually appealing. With colors.
#### lsblk
- This command lists out all the storage blocks, which includes disk partitions and optical drives including the mount point and size of the drive. This command also shows the drives and partitions in a tree format much like the tree command,
#### blkid
- Prints the block device (partitions and storage media) attributes like uuid and file system type. Does not report the space on the partitions.
#### hwinfo 
- The hwinfo command is a general purpose hardware information tool and can be used to print out the disk and partition list. The output however does not print details about each partition like some of the other commands above.
