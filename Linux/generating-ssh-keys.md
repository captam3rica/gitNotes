# Generate an SSH Key Pair

### Generate Keys

-   `cd ~/.shh/`
-   `ssh-keygen -t rsa -b 4096 -C "user@emailaddress" -f <your-key-name>`
-   Enter a password the ssh key (Make sure you remember this for the next step)


### Change the permission on ~/.ssh/

For .ssh/ directory

-   `chmod 700 ~/.ssh/`


For ~.ssh/authorized_keys file

-   `chmod 600 authorized_keys`


### Adding key to the ssh-agent

Start the ssh-agent on the source machine

-   `eval "$(ssh-agent -s)"`

    -   `eval` creates a subprocess and allows the current shell session to inherit the variable assignments that are output by `ssh-agent` so that other commands, in the current shell, can use them.


Add the key to the ssh-agent on the source machine

-   `ssh-add ~/.shh/<your-key-name>`

-   Enter the password for the key that you are adding.  

**NOTE**: The above commands we need to be executed for each new terminal session.


### Push public key to remote server's authorized_keys file

You can us one of two methods:

-   `ssh-copy-id -i <key-to-copy>.pub <username>@<servername>`

or

-   `cat ~/.ssh/shhkey.pub | ssh user@remoteserver "mkdir -p ~/.ssh/ && cat - >> ~/.ssh/authorized_keys"`


#### To use this ssh key on other systems do the following

-   `scp ~/.ssh/<your-key-name> <username>@<servername>:/home/<username>/.ssh/`


### To kill the current ssh-agent session

-   `ssh-agent -k`  - kill the ssh-agent process
-   `ssh-add -D `   - Delete all identities from the agent

Alternatively, you can locate and kill the PID for the running ssh-agent

-   `pgrep ssh-agent`
-   `kill -9 <process-id>`


### Troubleshooting

If you are trying to connect to a server via ssh or scp and you receive the following message ...

> Authentication refused: bad ownership or modes for file /home/captam3rica/.ssh/authorized_keys

-   For this error, make sure that permissions are set properly for **~/.ssh/** and **~/.ssh/authorized_keys**

        chmod 700 ~/.shh/
        chmod 600 ~/.ssh/authorized_keys


### Resources

[CentOS.org - Generating Key Pairs](https://www.centos.org/docs/5/html/5.1/Deployment_Guide/s2-openssh-generate-keypairs.html "Generating key pairs")
