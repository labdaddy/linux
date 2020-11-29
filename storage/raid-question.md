##### Question about additional disks asked online: 
where is the second hard disk in my CentOS?
yesterday I installed CentOS on my machine.There are two hard disk(SCSI) in my machine,but after installing,I used "fdisk -l"command to check disks only find one disk has been mounted. I also have check out the /dev directory,only find sda. Theoretically,there should exist sda and sdb under /dev. I have found some materials on the internet,maybe I must re-scan my disk,but how to re-scan? Anybody has encountered the same problem before?Or anybody could help me to use the second hard disk?


##### Response:
You have a RAID controller there, not a bare-disk SCSI controller. If you have it configured for a single RAID, it is going to present just a single SCSI device to the host system.

If your RAID controller is configured as RAID-0, the host OS will see a single SCSI device whose size is equal to twice the size of the smallest disk in the RAID. That is, if you have two 1 TB disks in the RAID, it will appear to be 2 TB to the host OS.

If it's configured as RAID-1 instead, it will appear to be the size of the smallest disk in the array, or 1 TB in our example configuration.

If that's what you want — that is, you want the disks to be in a hardware RAID — just set the RAID up in the BIOS, and format it in Linux as if it were a single disk. If you want to be able to configure the RAID from Linux, simply go to LSI's download page, tell it what kind of disk controller you have, and download the MegaRAID utility, megacli.

If you were hoping to be able to treat this RAID controller as a dumb SCSI disk controller, you're going to have to hack it.

Few LSI SAS RAID controllers support JBOD mode, which is what you'd need to get a RAID controller to export its connected disks individually as raw disks. (JBOD = Just a Bunch of Disks.) The best you can do with that type of disk controller is to create a single-disk RAID for each disk, which the controller will dutifully export as multiple /dev/sd[a-z] devices. This is not the same thing as JBOD, but from the host OS's perspective, it's close enough.

At the very low end of LSI's SAS RAID range, there are a few controllers like the 9201 that will run in so-called IT mode, or integrator mode. You have to reflash their firmware to do this; they will not do it out of the box. Having done so, your RAID controller appear to the host OS as a dumb SCSI controller, so your host OS will see the connected disks individually.
