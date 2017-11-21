# GitHub Cheats

## Configure the git Environment  

    $ git config --global user.name "[name]"
    $ git config --global user.email "[email]"
    $ git config --global color.ui auto
    $ git config --global core.editor "/bin/vim"

**This can be done per directory or per local repo by doing the following:**

-   `git config user.name "your-username" && git config user.email "your-email"`

## Generate an SSH Key for GitHub

-   Go to **Terminal**

      ## Check to see if you already have an SSH key pair
      $ ls ~/.ssh
          id_rsa
          id_rsa.pub
      ## Generate a new SSH key pair
      $ ssh-keygen -t rsa 4096 -C "[your-github-email@email.com]"
      ## Add the ssh key to the ssh Agent
      $ eval "$(ssh-agent -s)"
      $ ssh-add ~/.ssh/[ssh-key-name]
      ## List the contents of your .pub key
      $ less ~/.ssh/[ssh-key-name].pub
          ssh-rsa ...

-   Copy the contents of your *.pub* ssh key  

-   Go to your GitHub page. Then, Top-right **Click your photo > Settings > SSH and GPG keys > click New SSH key**

-   Give the new key a **Title**

-   Paste your *SSH Key* in the box labeled **Key**

-   Go back to the **Terminal**

      ## Try to connect to GitHub over SSH
      $ ssh -v git@github.com

    > The authenticity of host 'github.com (192.30.253.113)' can't be established. 
    > RSA key fingerprint is SHA256:nThbg6kXUpJWGl7E1IGOCspRomTxdCARLviKw6E5SY8.  
    > Are you sure you want to continue connecting (yes/no)? yes


-   Make sure that the SHA256 key matches the above and type "yes"

-   Done!!!!!

## Create an Empty Repo & Push Remotely to GitHub

**Note:** Change `[username]` to your *GitHub* user, and change `[repo_name_here]` to the name of the repository being created.
    
    $ mkdir [repo_name_here]
    $ cd [repo_name_here]
    $ echo "# [repo_name_here]" >> README.md
    $ git init
    $ git add README.md && git commit -m "first commit"
    $ curl -u '[username]' https://api.github.com/user/repos -d '{"name":"[repo_name_here]"}'
    $ git remote add origin https://github.com/[username]/[repo_name_here].git
    $ git push --set-upstream origin master

## Basics

-   Initialize a directory: `git init`

-   Add entire contents local directory: `$ git add .`

-   Commit a change: `$ git commit -m "Some note about the commit"`
    
    -   `git commit -a`: add changes that have already been commit and nothing new.

-   Initial push of commits to remote repo: `$ git push origin [main_branch_name]`

    -   Telling git which branch to push changes to.

-   Push commits to remote repo: `$ git push`

-   Download bookmarked history from remote repo and incorporates changes: `$ git pull`  

-   Downloads bookmark history and incorporates your changes on top of
remote changes: `$ git pull --rebase`  

-   Check repo status: `git status`

-   Revert a commit: `$ git revert -n <sha>`  

-   Show what revision and author last modified each line of a file: `$ git blame [file]`

-   See change logs: `git log`

## Create a local git repository from a clone, either local or remote.

**From github or bitbucket**

-   `git clone [url]`
-   `git clone https://github.com/[user]/[reponame].git /destination/directory/[dirname].git`

**Clone via SSH**

-   `git cone [username]@[servername]:[reponame] /destination/location/`
-   Enter the ssh password

## Update Repo URL

`git remote set-url origin git@github.com:[your-username]/[your-repo].git`

## Logging

-   Show change logs: `$ git log`  

    -   `git log --oneline`
    -   `git log -p`: show all changes (transactions) done to a file line by line.
    -   `git log -- [filename]`: see changes to a specific file
    -   `git log --author="username"`
    -   `git log --grep="search-term"`
    -   `git log --grap --decorate`
    -   `man git log`

## Removing Files & Folders

**Remove from local repo and server**

-   `git rm [file name]`: to remove file
-   `git rm -r [folder name]`: to remove folder
-   `git commit -m "Some message"`
-   `git push or git push origin [repo branch name]`

**Remove from server only**

-   `$ git rm --cached -r [dir name]`
-   `$ git rm --cached [file name]`


## Notes

If you have already "get clone"d the repository, you will not have to do the
following command.

    git remote add origin git@github.com:username/reponame.git

## Resources

[git-scm](https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration)