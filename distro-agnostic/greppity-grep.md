##### Some GREP stuff
Display a list of just sub-directories
- `ls -l | grep ^d`
- and now alias that because we are lazy: `alias lsd="ls -l | grep ^d"`
Now when you type "lsd" at the prompt, you will see a list containing only the directories, which can be very useful when you are trying to navigate through a messy set of folders.
