##### Install google chrome on centos 8 and Ubuntu 20

On CentOS 8
- Open terminal and type: `wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm`
- Then type `sudo dnf localinstall google-chrome-stable_current_x86_64.rpm`
- The system will prompt for password. Enter your password then press `enter` and voila !
Chrome is installed on CentOS

On Ubuntu 20
- Open terminal and type: `sudo apt install gdebi-core wget`
- Then type: `wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb`
- Then use gdebi to install the chrome package: `sudo gdebi google-chrome-stable_current_amd64.deb`
- Now chrome is installed.
- To launch chrome from the terminal type: `google-chrome`
