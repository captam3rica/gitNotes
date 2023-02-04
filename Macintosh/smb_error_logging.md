# SMB Error Logging

/System/Library/LaunchDaemons/com.apple.smbd.plist

Add the following flags to the smbd plist to enable debugging and standard output to the syslog log file.

...

    <key>ProgramArguments</key>
    <array>
            <string>/usr/sbin/smbd</string>
            <string>-debug</string>
            <string>-stdout</string>
    </array>

Now you can use syslog -w to review your logs in Terminal in real time.
