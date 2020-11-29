#### Sessions:
Start a new session:
- `tmux`
- `tmux new`
- `tmux new-session`
- `:new`

#### Show all sessions:
- `tmux ls`
- `tmux list-sessions`

#### Start a new session:
- `tmux new -s mysession`
- `:new -s mysession`

#### Attach to last session:
- `tmux a`
- `tmux at`
- `tmux attach`
- `tmux attach-session`

#### Attach to a session with the name mysession:
- `tmux a -t mysession`
- `tmux at -t mysession`
- `tmux attach -t mysession`
- `tmux attach-session -t mysession`

#### Kill/ delete session:
- `tmux kill-ses -t mysession`
- `tmux kill-session -t mysession`
- `tmux kill-session -a -t mysession`

Rename session:
