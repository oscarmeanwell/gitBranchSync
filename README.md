# gitBranchSync
Bash Script to synchronise two branches

Give the script execute permissions

`chmod +x mb.sh`

Add it as a global script

`cp mb.sh /usr/local/bin/mb`

This script takes a branch name as an input.

`mb final-branch`

The purpose of this script is to push your master branch to the user specified specified branch. If you havent pushed changes to your master branch it will do it for you. The specified branch is then updated to match the master. It then switches you back onto master.

For syncing dev branch with final branch.


![terminal_ouput](https://github.com/oscarmeanwell/gitBranchSync/blob/master/rsz_xp.png)

There is no error handling and if you dont use it as shown it will not work.
