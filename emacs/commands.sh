### file handling ###
C-x C-f  # open a file/create a file in bufffer
C-x C-s  # save the file
C-x C-w  # write the file with an alternate name
C-x k    # kill buffer (close the opened file in emacs)
C-z      # suspend emacs
C-x C-c  # close emacs

### basic movement ###
C-f      # forward one character 
C-b      # backward one character
C-p      # previous line
C-n      # next line
M-f      # forward one word
M-b      # backward one word
C-a      # begning of line
C-e      # end of line
C-v      # one page up
M->      # begning of text
M-<      # end of text

### editing ###
M-n      # repeat the following command n times
C-d      # delete a character
M-d      # delete a word
M-del    # delete a word backwards
C-k      # kill a line
C-space  # set the begining mark
C-w      # kill the marked region
M-w      # copy the marked region
C-y      # yank the copied region
M-y      # yank earlier text(cycle through the kill buffer)
M-u      # make letters uppercase in word from current cursor position
M-c      # make first letter in the word uppercase

### Important ###
C-g                  # quit the running or entered command
C-x u                # undo
C-/                  # undo
M-x revert-buffer    # undo all changes since last save
M-x recover-file     # Recover text from an autosave-file
M-x recover-session  # if you edited several files
C-x h                # select all


###  online help ###
C-h t    # start emacs tutorial
C-h i    # start the info reader
C-h p    # show infos about the elisp packages on the machine

### search/replace ###
C-s      # search forward
C-r      # search backward
M-%      # query replace
            ## Space or y replace this occurence
            ## Del or n don't replace
            ## . only replace this and exit (replace)
            ## , replace and pause (resume with Space or y)
            ## ! replace all following occurences
            ## ^ back to previous match
            ## RETURN or q quit replace


### window commands ###
C-x 2    # split window vertically
C-x 3    # split window horizontally
C-x o    # change to other window
C-x 0    # delete window
C-x 5 2  # make new frame
C-x 5 o  # change to other frame
C-x 5 0  # close the frame
M-x b    # switch between buffers

### shell ###
M-8      # shell 1
M-9      # shell 2
M-p      # show previous command
M-n      # show next command

### Directory editor(dired) ###
C-x d    # start up dired
C        # copy
d        # mark for delete
u        # unmark
D        # delete right away
x        # delete file marked with d
g        # reload
o        # open file in another window
q        # quit dired
R        # rename file
z        # compress file
+        # create directory
>        # change to next directory
<        # change to previous directory
s        # toggle between sorting by name and date

### programming ###
C-x C-k  # kill compilation

### gdb ###
bt                  # backtrace
p-variable_name     # print the value of a variable
b fileName:line_no  # set breakpoint
n                   # next Executable line
c                   # continue
d                   # delete all breakpoints
info b              # info abt all breakpoints
d 1                 # delete breakpoint 1
r                   # run
