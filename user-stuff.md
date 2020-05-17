#### To add a user
- login as root or su to root
- useradd username
- passwd username

#### To delete user
- login as root or su to root
- userdel -r username


#### Removing Password of a User using -d option
- passwd -d username



#### Lock the password of System User
- passwd -l username
- To check: passwd -S


#### Unlock User’s Password using -u option
- passwd -u username


#### Set Minimum Days to Change Password using -n option.
- passwd -w (days as integer)
