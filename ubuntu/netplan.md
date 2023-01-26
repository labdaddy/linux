### UBUNTU 22 NETWORK CONFIG
Ubuntu 22 and later uses netplan to configure network settings.
A template will be very helpful in prepping this.

## TEMPLATE:
```
# This is the network config written by 'subiquity'
network:
  renderer: networkd
  ethernets:
    ens33:
      addresses:
        - 192.168.1.42/24
      nameservers:
        addresses: [192.168.1.1, 8.8.8.8]
      routes:
        - to: default
          via: 192.168.1.1
  version: 2
  ```
  
  

Make sure the config is applied:
 `$ sudo netplan apply`
 
Then check the IP address on the NIC: 
 `$ ip addr show ens33`
 
Confirm the route was updated:
 `$ ip route show`
