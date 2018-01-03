# Custom Settings Profile

Used for settings that have been release by Apple but have not yet been
implemented by AirWatch.

-   Use custom settings payloads and `XML` configurations pulled from a test
    machine

-   The setting is ignored by macOS versions not compatible with the new
    feature. 

Basically, created one of the built-in payloads then remove those settings
and edit the `XML` to your liking.

Navigate to **`Devices > Profiles & Resources > Profiles > Add > Add Profile.
Select Apple Mac > macOS`**

1.  Configure **General** settings. These settings determine 
    how the profile deploys and who receives it.

2.  Configure the appropriate payload (for example, Restrictions or Passcode).

    Alternatively, if you have a Mac handy (running the most recent macOS) you can
    configure the preference file locally on the Mac. Typically, the preferences
    that you are looking for will be in `/Library/Preferences` or
    `~/Library/Preferences`. Once you find the preference file that you need,
    make your tweaks then convert it to a custom plist via **MCXToProfile** (on
    github) or by using the following command:

    `plutil -convert xml1 /path/to/preference.plist`

    A benefit to using **MCXToProfile** is that you can define how you would
    like the profile to be applied. For example, you can have the profile apply
    only once, often, or always.

    Once this process is complete, you can then skip to step 7.

3.  **Save**, but do not publish, your profile.

4.  Select the profile using the radio button next to the name. Menu buttons
    appear containing the Profile Details.

5.  Select **View XML** from the actions menu for the row of the profile you want to
    customize.

6.  Find and copy the section of text starting with `<dict> ... </dict>` that you
    configured previously. This section contains a configuration type 
    identifying its purpose, such as the name Restrictions.

    This is so that you get the correct syntax layout for the custom settings
    payload.

7.  Navigate back to Custom Settings profile and paste the `XML` you copied in the
    text box. The entire text block should have been copied.

    Example `xml` code:   
    ```xml
    <?xml version="1.0" encoding="utf-8"?>  
    <!doctype plist public "-//apple//dtd plist 1.0//en" 
    "http://www.apple.com/dtds/propertylist-1.0.dtd">
    <plist version="1.0">
    <dict>
        <key>Label</key>
        <string>com.[something].[plist-name]</string>
        <key>ProgramArguments</key>
        <array>
            <string>/bin/sh</string>
            <string>/full/path/to/script.sh</string>
        </array>

        ...

    </dict>
    ```

8.  Remove the original template payload that you configured by selecting the base payload
    section and selecting the minus `[-]` button. You can now edit the profile by adding 
    custom XML code for the new functionality.

