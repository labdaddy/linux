# vim
vim

### Editing in vi/ vim
- i for insert mode so the following commands will work
- dw deletes word from the cursor to the end of the word.
- d0 will delete to the beginning of a line.
- d$ will delete to the end of a line.
- u will undo the last operation.

### Moving around in vi/ vim
- esc for command mode so these commands will work
- h moves the cursor one character to the left.
- j moves the cursor down one line.
- k moves the cursor up one line.
- l moves the cursor one character to the right.
- 0 moves the cursor to the beginning of the line.
- $ moves the cursor to the end of the line.
- w move forward one word.
- b move backward one word.
- G move to the end of the file.
- gg move to the beginning of the file.

### Copy/ paste in vi/ vim
- esc for command mode so these commands will work
- v highlight one character at a time.
- V highlight one line at a time.
- Ctrl-v highlight by columns.
- p paste text after the current line.
- P paste text on the current line.
- y yank text into the copy buffer.

### Exiting vi/ vim
- esc first
- :
- q to quit if no changes have been made
- q! to quit without saving
- wq to save (write to disk) and then quit
