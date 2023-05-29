### UBUNTU 22 NETWORK CONFIG
Ubuntu 22 and later uses netplan to configure network settings.
A template will be very helpful in prepping this.

## TEMPLATE:
```
# This is the network config written by 'subiquity'
network:
  renderer: networkd
  ethernets:
    [adaptor name here]:
      addresses:
        - [IP address here with /CIDR], whole thing inside square brackets
      nameservers:
        addresses: [IP address here with /CIDR], whole thing inside square brackets
      routes:
        - to: default
          via: 192.168.25.1
  version: 2
  ```
  
  

Make sure the config is applied:
```
$ sudo netplan apply
```
 
Then check the IP address on the NIC: 
```
$ ip addr show ens33
```
 
Confirm the route was updated:
```
$ ip route show
```
