## SETUP ROCKY LINUX DESKTOP
[Taken from this webpage](https://www.dedoimedo.com/computers/rocky-linux-8-perfect-desktop.html)

Install gnome-tweaks
- `sudo dnf install gnome-tweaks`
- setup gnome-tweaks to your liking, e.g enable min/ max windows, change fonts and font sizes etc.

#### Extensions
If you want to have a more conventional desktop experience, i.e., a permanently visible dock/launcher/panel with application shortcuts, in Gnome, you will need to install several Gnome extensions. To achieve that, there are several steps. One, launch a browser, navigate to [Gnome Extensions](https://extensions.gnome.org/), and install the browser add-on. Two, reload the page, and then search for panel-enablement extensions. Overall, You can choose [Dash to Dock (D2D)](https://www.dedoimedo.com/computers/gnome-3-dash.html) or [Dash to Panel (D2P)](https://www.dedoimedo.com/computers/gnome-3-dash-to-panel.html). I prefer the latter. Install it, that is, toggle it on. You will immediately see that your desktop has changed, and that the top bar and the hidden Launcher (available under Activities) are now permanently visible at the bottom of your screen, like you'd expect in a standard desktop configuration.

#### Additional repositories and popular software
By default, you won't have access to various third-party applications for common everyday fun. Rocky Linux 8 is designed to be a server system, hence gaming, media and similar programs aren't necessarily all there by default. However, much like with Fedora or CentOS, you can enable a set of third-party repositories to gain access to these additional applications and utilities. There are many RHEL-compatible sources. Here, I will enable RPM Fusion free and non-free repositories.

Once you've downloaded the two RPM files, install them:
- `sudo dnf install "RPM Fusion free".rpm`
- `sudo dnf install "RPM Fusion non-free".rpm`
- Now, you can install extra software like:
- `sudo dnf install gimp lyx vlc`



