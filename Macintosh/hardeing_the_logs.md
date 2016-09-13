# Hardening the Logs

## Step 1: harden log files

    $ cd /var/log

Configure the log files to only be accessible by the root user:

    $ sudo chmod 600 *.log*

## Step 2: Configure cron/launchd

Log files are rotated on a regular basis, so we need to make sure that the
permissions remain as we set them earlier.

    $ cd /etc/periodic/
    $ ls
    daily/   monthly/ weekly/

Inside of the daily, weekly, and monthly directories there are scripts that run
and perform various tasks on log and other files. You will want to edit these
files to fit your needs. These files are then passed to
"/etc/defaults/periodic.conf". Here, you can change certain periodic time 
settings and other status files.

    $ less /etc/defaults/periodic.conf
