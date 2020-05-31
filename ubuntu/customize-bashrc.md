#### In the .bashrc file Locate this if / then statement:
- `if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi`
- Bash reads PS1 variable to define the primary prompt and PS2 for a secondary prompt (used when writing multi-line commands). In this "if" block, the first PS1 is the prompt that will be shown when color is turned on, and the second one (after "else") is used when no color is desired. As you can see, color codes are quite tiring to use. Imagine having to write things like \[\033[01;32m\] all over again- it's quite tiresome. Fortunately, bash lets us define variables for the different colors. Paste this code above that "if" block:
- `# ANSI color codes
RS="\[\033[0m\]"    # reset
HC="\[\033[1m\]"    # hicolor
UL="\[\033[4m\]"    # underline
INV="\[\033[7m\]"   # inverse background and foreground
FBLK="\[\033[30m\]" # foreground black
FRED="\[\033[31m\]" # foreground red
FGRN="\[\033[32m\]" # foreground green
FYEL="\[\033[33m\]" # foreground yellow
FBLE="\[\033[34m\]" # foreground blue
FMAG="\[\033[35m\]" # foreground magenta
FCYN="\[\033[36m\]" # foreground cyan
FWHT="\[\033[37m\]" # foreground white
BBLK="\[\033[40m\]" # background black
BRED="\[\033[41m\]" # background red
BGRN="\[\033[42m\]" # background green
BYEL="\[\033[43m\]" # background yellow
BBLE="\[\033[44m\]" # background blue
BMAG="\[\033[45m\]" # background magenta
BCYN="\[\033[46m\]" # background cyan
BWHT="\[\033[47m\]" # background white`
- Now you don't have to write all that crazy ANSI color code over and over again. For instance, you can just use `$FBLE` to set foreground (text) to blue, instead of `\[\033[34m\]`.
