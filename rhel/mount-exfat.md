##### Mount an exfat usb drive on Centos/ RHEL 7
- The Nux repository depends on the EPEL software repository. If the EPEL repository is not enabled on your system, enable it by typing: `sudo yum install epel-release`
- Next, import the repository GPG key and enable the Nux repository by installing the rpm package: `sudo rpm -v --import http://li.nux.ro/download/nux/RPM-GPG-KEY-nux.ro` and then type: `sudo rpm -Uvh http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm`
- Once the repository is enabled install the exfat-fuse and exfat-utils packages using the following commands: `sudo yum install exfat-utils fuse-exfat`
- Now you're done
