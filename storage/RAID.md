The RAID level you use determines the number of drives you need, and what effects it will have on overall performance.
RAID 0: Takes the contents of files and spread them in roughly even parts across all drives in the RAID array. Also known as disk striping, RAID 0 allows the CPU to read and write simultaneously on different drives, improving performance. It works with two or more disks, and the total space is equal to the sum of all drives in the array, but it does not include any fault tolerance. In fact, since the failure of one RAID 0 drive will lose all data in the array, larger RAID 0 arrays are even less fault tolerant than smaller ones.


RAID 1: Writes identical data to two or more hard drives, also known as disk mirroring. You need at least 2 hard drives to configure a RAID 1 array. Read performance is improved slightly due to the fact that any free drive in the array can provide the CPU with the data it requests. Write performance is slower as the CPU has to write the data to every drive in the array. RAID
1's main benefit is its fault tolerance. If one drive in the array fails, all the data is available on at least one other drive.

RAID 5: Uses disk striping across at least three drives and includes parity data. If one of the drives in the array fails, the data that was stored on the failed drive can be recreated from the parity data on the remaining drives. RAID 5 has the read performance increase you'd see with RAID 0, plus it includes fault tolerance without using as much disk space as RAID 1.


RAID 6: Similar to RAID 5, except with at least four drives, and two parity disks. RAID 6 has the benefits of RAID 5, but with much stronger fault tolerance.


RAID 10: A nested RAID level, also referred to as RAID 1+0. Nested RAID levels combine RAID 0 (data striping) with other RAID techniques. RAID 10 combines RAID 1 (mirroring) with RAID 0 (disk striping), making it a stripe of mirrors. RAID 10 requires four hard drives - two hard drives for the disk mirror and then two more disks to stripe the mirrored disks. Other nested RAID levels include RAID 01, RAID 100, RAID 50 and RAID 60.
