#### SOME AWESOME ALIASES TO MAKE LIFE BETTER

##### Set up first
Before beginning, create a file called ~/.bash_aliases:
- `$ touch ~/.bash_aliases`

Then, make sure that this code appears in your ~/.bashrc file:
if [ -e $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi

Enter these aliases into your .bash_aliases file, and then load them into your Bash session with the `source ~/.bashrc` command.

Add this alias to your configuration on a GNU system:
`alias lt='ls --human-readable --size -1 -S --classify`
This alias replaces lt with an ls command that displays the size of each item, and then sorts it by size, in a single column, with a notation to indicate the kind of file. Load your new alias, and then try it out:

