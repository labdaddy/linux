### UBUNTU 22 NETWORK CONFIG
Ubuntu 22 and later uses netplan to configure network settings.
A template will be very helpful in prepping this.

## TEMPLATE:
~~~# This is the network config written by 'subiquity'
network:
  renderer: networkd
  ethernets:
    ens33:
      addresses:
        - 192.168.1.247/24
      nameservers:
        addresses: [4.2.2.2, 8.8.8.8]
      routes:
        - to: default
          via: 192.168.1.1
  version: 2
