# GitHub Cheats

## Configure the git Environment  

    $ git config --global user.name "[name]"
    $ git config --global user.email "[email]"
    $ git config --global color.ui auto
    $ git config --global core.editor "/bin/vim"

**Print rep .git/config to stdout**

-   `git config -l`

**Update Repo URL**

-   `git remote set-url origin git@github.com:[your-username]/[your-repo].git`

**Switch the protocol that the repo is using**

-   `git config remote.origin.url git@github.com:[repo]/[yourproject.git]`

-   You can also edit the _config_ file directly
        
        cd /your/repo/directory
        vim .git/config

        Change the line: remote.origin.url=https://github.com:[repo]/[yourproject.git]
        To: remote.origin.url=git@github.com:[repo]/[yourproject.git]

## Generate an SSH Key for GitHub

1.  Go to **Terminal**

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

2.  Copy the contents of your _.pub_ ssh key  

3.  Go to your GitHub page. Then, Top-right **Click your photo > Settings > SSH and GPG keys > click New SSH key**

4.  Give the new key a **Title**

5.  Paste your *SSH Key* in the box labeled **Key**

6.  Go back to the **Terminal**

        ## Try to connect to GitHub over SSH
        $ ssh -v git@github.com

    > The authenticity of host 'github.com (192.30.253.113)' can't be established. 
    > RSA key fingerprint is SHA256:nThbg6kXUpJWGl7E1IGOCspRomTxdCARLviKw6E5SY8.  
    > Are you sure you want to continue connecting (yes/no)? yes

7.  Make sure that the SHA256 key matches the above and type "yes"

8.  Done!!!!!

## Import GPG key to GitHub

1.  Run the following command to list the keys for which you have a public and
    private key.

    ```sh
    $ gpg --list-secret-keys --keyid-format LONG
    /Users/captam3rica/.gnupg/pubring.kbx
    -------------------------------------
    sec   rsa4096/40DFE59EF3007E52 2017-11-08
        97D75C441D64BA19EE5B606440DFE59EF3007E52
    uid                 captam3rica
    ssb   rsa4096/59100F5B3480D347 2017-11-08
    ```

2.  Copy the GPG key ID that you would like to use. For me, it was
    `40DFE59EF3007E52`

3.  Paste the key ID into the following command.

    `gpg --armor --export 40DFE59EF3007E52`

    This will print the public key ID in ASCII armor format

4.  Copy your GPG key, starting at `-----BEGIN PGP PUBLIC KEY BLOCK-----` to
    `-----END GPG PUBLIC KEY BLOCK-----`

5.  Add the GPG key to your GitHUB account under the `Settings > SSH and GPG
    keys`

## Create an Empty Repo & Push Remotely to GitHub

### GitHub

**Note:** Change `[username]` to your *GitHub* user, and change `[repo_name_here]` to the name of the repository being created.
    
    $ mkdir [repo_name_here]
    $ cd [repo_name_here]
    $ echo "# [repo_name_here]" >> README.md
    $ git init
    $ git add README.md && git commit -m "first commit"
    $ curl -u '[username]' https://api.github.com/user/repos -d '{"name":"[repo_name_here]"}'
    $ git remote add origin https://github.com/[username]/[repo_name_here].git
    $ git push --set-upstream origin master
    
[Documentation](https://developer.github.com/v3/repos/#create) 

### GitLab

```
$ curl --request POST --header "PRIVATE-TOKEN: my token" -d "name=[project_name]" "https://gitlab.com/api/v4/projects/user/:captam3rica"
```

[Documentation](https://gitlab.com/help/api/projects.md#create-project)

## Basics

-   Initialize a directory: `git init`

-   Add entire contents of local directory: `$ git add .`

-   Commit a change: `$ git commit -m "Some note about the commit"`
 
    -   `git commit -a`: add changes that have already been commit and nothing new.

-   Change the name of a file or directory: 

    `git mv [filename.old] [filename.new]`
    `git commit -m "note about change"`

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

## Ignoring Content

-   `git config --global core.excludesfile`: check to see if a global ignore
    file is present

-   `git config --global core.excludesfile '/etc/gitignore'`: use this file to
    ignore other files

-   `vim .gitignore`: create an ignore file locally

## Branching 

**Note**: make sure to tell `git` who you are.

-   **`dev > qa > review > prod`**
-   `git branch`: see current branch
-   `git branch dev`: create a new branch "dev"
-   `git checkout dev`: checkout the "dev" branch 
-   `git checkout -b dev`: create and move to branch "dev"

## Merging 

-   `git push origin dev`: push "dev" repo on github
-   `git push --all`: update and push all branches 
-   `git merge dev`: merge "dev" with current active branch

## Create a local git repository from a clone, either local or remote.

**From github or bitbucket**

-   `git clone [url]`
-   `git clone https://github.com/[user]/[reponame].git /destination/directory/[dirname].git`

**Clone via SSH**

-   `git cone [username]@[servername]:[reponame] /destination/location/`
-   Enter the ssh password

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

**If you already commited changes, then**

-	`git reset (--hard) HEAD~1`

**If not then:**

-	`git reset`
-	`git checkout -- $(git ls-files -d)`


## Notes

If you have already "get clone"d the repository, you will not have to do the
following command.

    git remote add origin git@github.com:username/reponame.git

## Resources

[git-scm](https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration)
