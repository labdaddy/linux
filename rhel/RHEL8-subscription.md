# RHEL 8

## To register the system, verify registration, enable subscriptions and enable repositories
#### Register RHEL 8 to Red Hat with subscription-manager 
- `subscription-manager register`

#### Attach a subscription to RHEL 8 using Pool ID 
- `subscription-manager list --available`
- Then copy the pool ID and enter: `subscription-manager attach --pool=[pool id from above]`

#### Attach subscription to RHEL 8 using –auto 
- `subscription-manager attach --auto`

#### Verify Attached Subscription on RHEL 8
- `subscription-manager list`

#### By this time, your system should have enabled a few repositories by default. 
- View the enabled repositories with: `yum repolist`

#### Enabling Red Hat Repositories on RHEL 8
- Looking at the output of the previous command, you will find only two Red Hat repositories which are enabled by the system. 
- You can enable more repositories either running the `subscription-manager` command or by editing the `/etc/yum.repos.d/redhat.repo` file.

#### Enabling repos using subscription-manager
- First list all available repositories: `subscription-manager repos --list`
- Then write down the Repo ID of the Red Hat repository you wish to enable and enable it
- `subscription-manager repos --enable=RepoID` using the Repo ID you got from the previous command. 

#### Enable Red Hat Repository on RHEL 8 using repo file
- Edit the configuration file with: `vi /etc/yum.repos.d/redhat.repo`
- To enable a particular repo, change `enabled=0` to `enabled=1` and then save the file.

## To DISABLE repositories, DISABLE subscriptions, UNREGISTER the system and REMOVE all system data

#### DISABLING a repo using repo file: 
- You can either use `subscription-manager` command like so: `subscription-manager repos --disable=codeready-builder-for-rhel-8-x86_64-rpms`
- Or edit the `/etc/yum.repos.d/redhat.repo` file.

#### DISABLING repos using subscription manager
- `subscription-manager repos --disable=RepoID`

#### To DISABLE a subscription in RHEL 8
- Remove a particular subscription using Pool ID: `subscription-manager remove --pool=[pool id from previous command]`
- Disable ALL subscriptions from the system using: `subscription-manager remove --all`

#### To UNREGISTER RHEL 8 from Red Hat Subscription Management
- Before you unregister your system, consider removing all subscriptions (see above).
- Then UNREGISTER the RHEL 8 system: `subscription-manager unregister`

#### Finally, REMOVE all local system and subscription data without affecting the server.
- `subscription-manager clean`
