## SETUP NFS ON FEDORA
To start file sharing with NFS first you need to install the NFS server and client components.

### Install NFS server
By default, the nfs server and required packages are installed on most of the fedora systems you can check this by using the given command
- `rpm -q nfs-utils`

This will display the information of the nfs package installed on your system.

If not, install NFS client packages:

- `sudo dnf install nfs-utils`

Press `y` and then `enter` if it asks you for your confirmation.

Next, enable the nfs server and required services by using

- `sudo systemctl enable rpcbind`

- `sudo systemctl enable nfs-server

- `sudo service rpcbind start`

- `sudo service nfs-server start`

You can check the status of your NFS server by using

- `sudo systemctl status nfs-server`

## Create and export a directory
You can create a separate directory where you can share files through nfs.

Create a mount point directory where you want to mount the NFS share:
- `sudo mkdir /mnt/lab_data`

Mount the NFS share using the mount command:


Open the /etc/exports configuration file 

- `sudo nano /etc/exports`
