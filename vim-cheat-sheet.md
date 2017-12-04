# Vim Cheat Sheet
Mon Dec  4 16:04:56 EST 2017

| Command  | Definition |
| :------  | :--------- |
| gg or :0 | go to top of file from anywhere |
| :$ | go to end of file |
| $ | go to end of line | 
| shift-[] | Move from paragraph to paragraph |
| n[ or  ] | Move (n) paragraphs up or down |
| shift-%  | Move between matching [], {}, () |
| nL       | Move (n) chars forward | 
| nh | Move (n) chars backward |
| nw | Move (n) words forward | 
| e | move to the end of a word |
| w | move to the front of the next word |
| b | move back one word | 
| ctrl-d | move one page down |
| ctrl-b | move one page up | 
| -----Copy, paste, delete----- | --------- |
| ni | insert (n) lines |
| a | insert to right of cursor |
| A | insert at end of line |
| o or O | insert new line below or above cursor | 
| nu | undo (n) times |
| #rn | replace (n) chars | 
| x | delete a single char |
| nx | delete (n) chars |
| yy | copy the entire line |
| v(isual) | mark lines visually |
| p or P | paste below or Above the cursor |
| `shft >> or <<` | indent or undent |
| :%s/old/new/gc | find, replace, and confirm | 
| d0 | delete from cursur to beginning of line |
| dd | delete entire line |
| d[ or ] | delete paragraph above or below cursor |
| dop or dip | delete a paragraph |
| dis or das | delete a sentence | 
|:noh | remove hightlight search words | 
| 4. | copy previous line 4 times | 
| -----shell commands from vim----- | --------- |
| :! [your shell command here] | run a shell command from within vim |
| :r! [your shell command here] | run a shell command and insert output to vim |
| 1,5 ! `sort -r` | sort lines 1 - 5 in reverse order | 
| :! git add [filename] && git commit -m "comment" && git push | add, commit,
and push to github without leaving vim | 
| -----window manipulation----- | --------- | 
| shift-zz | write (save) & exit |
| :saveas [filename.txt] | save file as |
| :badd | add a file to the buffer |
| :bad n | go to buffer (n) | 
| :ls | list files in buffer |
| :bn | go to next buffer in the list |
| :bp | go to previous buffer |
| :f | see stats about the current file | 
| ctrl-6 | swich between buffers | 
| ---------- | --------- |
| ctrl-w w | switch between visible vim windows in the same buffer |
| ctrl-w v | split screen vertically | 
| ctrl-w s | split screen horizontally | 

