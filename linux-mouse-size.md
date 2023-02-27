There is no default application in distributions to set cursor size but it is always possible through gsettings command line utility.
To get existing cursor size:
- `gsettings get org.gnome.desktop.interface cursor-size 
- 32`
- As you can see, cursor size in this example: 32 To change it to 64, use following command:
- `gsettings set org.gnome.desktop.interface cursor-size 64`
- For the best results, you should select one of the size below:
24: Default
32: Medium
48: Large
64: Larger
96: Largest
