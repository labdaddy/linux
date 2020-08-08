##### Using SSH to browse the web safely on shady public wifi. This outlines a method to connect to ssh server and tunnel everything to that encrypted connection and then browse safely from there.

**Starting with the config file**
We will need to amend the config file so the ssh server is listening on the encrypted web port 443 (vs the standard ssh port 22 which is often blocked on public wifi)
