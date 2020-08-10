###TMUX STUFF

##### PREFIX 
- A prefix in tmux is a signal sent to tmux to tell it to do something. The prefix command is `ctlr+b`.

##### GENERAL TMUX COMMANDS
- To exit a tmux session press the `prefix` then `d`
- To return to a tmux session type: `tmux attach`
- To return to a specific tmux session type: `tmux attach -t 1` (to attach to session 1) or `tmux attach -t 2` (to attach to session 2 and so on). Also the `tmux attach` command can be abbreviated to `tmux a`. 
- To change the `prefix` from the default `ctrl+b` to something better suited to human hands you can modify this in the tmux config file. Open `.tmux.conf	 in your favorite text editor. 

##### SPLITS
- To split the screen horizontally press: `prefix` then immediately press `"`
- To vertically press: `prefix` then immediately press `%
- To exit a split screen area either type `exit` within the split screen area you want to close or type `prefix`

##### NAVIGATION
To navigate between panes using the keyboard: `prefix` then arrow (up, down, left or right)
- To zoom into one specific pane: `prefix` then `z`. Will zoom into the currently highlighted pane. Pressing `prefix` then `z` again to zoom out.

##### WINDOWS
- To add more windows (to reduce clutter from too many panes on one screen) press `ctrl+b` then `c`. This adds another window that can then be used to open more panes for more tasks
- To move back and forth between created windows press `prefix` then `p` (for previous) or `prefix` then `n` (for next)
- To kill a window press `prefix` then & then `y`.
- To change the name of a window (for easier idenfication) `prefix` then `,`. Tmux will ask you to rename the window (down in the bottom bar). The name will change right away


##### SESSIONS
- To disconnect a tmux session press `prefix` then `d` (for disconnect).
- To navigate between  
- To rename a session type `prefix` then `$`. Tmux will ask you to rename the session. The change will take effect immediately
- To view sessions in a different way press: `prefix` then s (for sessions). 
- You can navigate within the listed sessions view with the up and down arrows. This scrolls through the open sessions and also shows a preview of the contents of each session as you scroll through.
- To enter one of the sessions simply highlight it by arrowing up or down to it and then press `enter`.
- 

##### VIEWING TMUX INFO
- Type `tmux list-sessions` or `tmux ls`
- 
