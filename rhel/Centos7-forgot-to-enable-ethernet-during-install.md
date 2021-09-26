#### During Centos 7 installation you are prompted to enable ethernet. If you forget to do this your new vm will not have internet access. To fix this after the fact go to:
`/etc/sysconfig/network-scripts/ifcfg-xxx:` and edit the file there to this: `ONBOOT=no` to `ONBOOT="yes"`. Reboot. Done.
