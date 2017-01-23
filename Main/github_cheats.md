# GitHub Cheats

`git config --global user.name "[name]"`

`git config --global user.email "[email]"`

`git init [name of new repository]`  

Create a git repository

`git clone [url]`

`git remote add origin https://github.com/captam3rica/gitNotes`

To add entire local repo: `git add .`

commit: `git commit -m "Some note about the commit"`

Initial push of commits: `git push origin master`

Push commits: `git push`

Download bookmark history and incorporates changes: `git pull`  

Downloads bookmark history and incorporates your changes on top of
remote changes: `git pull --rebase`  

Revert a commit: `git revert -n <sha>`  

Show what revision and author last modified each line of a file: `git blame [file]`  

Show log of changes: `git log`  

Remove from local repo and server: `git rm [file name]`

Remove from server only: `get rm --cached -r [dir name]` or `get rm --cached [file name]`


## Notes

If you have already "get clone"d the repository, you will not have to do the
following command.

    git remote add origin git@github.com:username/reponame.git

## Resources

[git-scm](https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration)
