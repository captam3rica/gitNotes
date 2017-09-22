# GitHub Cheats

**Configure the git Environment**  

    $ git config --global user.name "[name]"
    $ git config --global user.email "[email]"f
    $ git config --global color.ui auto

**Create an Empty repo**

    $ mkdir TMAS && cd TMAS && echo "# TMAS" >> README.md
    $ git init
    $ git add README.md && git commit -m "first commit"
    $ git remote add origin https://github.com/captam3rica/TMAS.git
    $ git push -u origin master

**Check the Status**

    $ git status

**Create a git repository from a clone**

    $ git clone [url]
    $ git remote add origin https://github.com/captam3rica/[gitRepoName]

**Basics**

- To add entire local repo: `$ git add .`
- Commit a change: `$ git commit -m "Some note about the commit"`
- Initial push of commits: `$ git push origin [main_branch_name]`
- Push commits: `$ git push`
- Download bookmark history and incorporates changes: `$ git pull`  
- Downloads bookmark history and incorporates your changes on top of
remote changes: `$ git pull --rebase`  
- Revert a commit: `$ git revert -n <sha>`  
- Show what revision and author last modified each line of a file: `$ git blame [file]`  
- Show log of changes: `$ git log`  

**Remove from local repo and server**

    $ git rm [file name] - to remove file
    $ git rm -r [folder name] - to remove folder
    $ git commit -m "Some message"
    $ git push or git push origin [repo branch name]

**Remove from server only**

- `$ git rm --cached -r [dir name]`
- `$ git rm --cached [file name]`


## Notes

If you have already "get clone"d the repository, you will not have to do the
following command.

    git remote add origin git@github.com:username/reponame.git

## Resources

[git-scm](https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration)
