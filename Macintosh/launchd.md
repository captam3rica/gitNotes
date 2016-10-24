# Launchd

## Job Definitions

![Job Definitions](/Users/jwils156/repos/gitMyNotes/images/jobDefinitions.png)

The following example shows a complete job definition with only three keys:

- **Label** This key is required for every job definition. It identifies the job and has to be unique for the launchd instance. Theoretically it is possible for an agent to have the same label as a daemon, as daemons are loaded by the root launchd whereas agents are loaded by a user launchd, but it is not recommended.
- **Program** This key defines what to start, in this case a shell script /Users/Me/Scripts/cleanup.sh.
- **RunAtLoad** This is one of several optional keys specifying when the job should be run, in this case right after it has been loaded.

## Code

      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
      <dict>
           <key>Label</key>
           <string>com.example.app</string>
           <key>Program</key>
           <string>/Users/Me/Scripts/cleanup.sh</string>
           <key>RunAtLoad</key>
           <true/>
      </dict>
      </plist>

## Loading v Starting

- Loading a job definition does not necessary mean to start the job. When a job is started is determined by the job definition. In fact, only when RunAtLoad or KeepAlive have been specified, launchd will start the job unconditionally when it has been loaded.

## Program & ProgramArguments

- Program will only have one argument line

      <key>Program</key>
      <string>/path/to/program</string>

- ProgramArguments will have multiple arguments within an <array> </array> tag

      <key>ProgramArguments</key>
      <array>
            <string>/usr/bin/rsync</string>
      <string>--archive</string>
      <string>--compress-level=9</string>
      <string>/Volumes/Macintosh HD</string>
      <string>/Volumes/Backup</string>
      </array>

## Starting the Daemon

RunAtLoad

    <key>RunAtLoad</key>
    <true/>

StartInterval

    <key>StartInterval</key>
    <integer>3600</integer>

StartCalendarInterval

    <key>StartCalendarInterval</key>
    <dict>
         <key>Hour</key>
         <integer>3</integer>
         <key>Minute</key>
         <integer>0</integer>
    </dict>

![Cal interval](/Users/jwils156/repos/gitMyNotes/images/startCalendarInterval.png)

WatchPath

    <key>WatchPaths</key>
    <array>
          <string>/path/to/directory_or_file</string>
    </array>

- If a file: creating, removing, and writing to the file will start the job
- If a Dir: creating and removing the directory, as well as creating, editing, removing files within the dir will cause the job to start. Actions done from within subdirs will not start the job.

## TimeMachine LaunchDaemon

- /Users/jwils156/Library/LaunchAgents/

        1 <?xml version="1.0" encoding="UTF-8"?>
        2 <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
        3 <plist version="1.0">
        4 <dict>
        5     <key>Label</key>
        6     <string>com.captam3rica.starttimemachinescript</string>
        7     <key>ProgramArguments</key>
        8     <array>
        9         <string>/bin/sh</string>
       10         <string>/Users/jwils156/bin/start_timemachine.sh</string>
       11     </array>
       12     <key>StartCalendarInterval</key>
       13     <dict>
       14         <key>Hour</key>
       15         <integer>10</integer>
       16         <key>Minute</key>
       17         <integer>0</integer>
       18     </dict>
       19 </dict>
       20 </plist>

## Continue Child Process

    <key>AbandonProcessGroup</key>
    <true/>

This will force the child processes that were kicked off by the script to continue running after the script has completed. Otherwise, 
## Resources

http://launchd.info/
