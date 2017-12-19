# Custom Settings Profile

Used for settings that have been release by Apple but have not yet been
implemented by AirWatch.

-   Used custom settings payloads and `XML` configurations
-   The setting is ignored by macOS versions not compatible with the new
    feature. 

Basically, created one of the built-in payloads then remove those settings
and edit the `XML` to your liking.

1.  Navigate to **`Devices > Profiles & Resources > Profiles > Add > Add Profile.
    Select Apple Mac > macOS`**

2.  Configure the profile's General settings. These settings determine 
    how the profile deploys and who receives it. For more information on 
    General settings, see Add General Profile Settings.

3.  Configure the appropriate payload (for example, Restrictions or Passcode).

4.  Save, but do not publish, your profile.

5.  Select the profile using the radio button next to the profile name. Menu buttons
    appear about the Profile Details.

6.  Select View XML from the actions menu for the row of the profile you want to
    customize.

7.  Find and copy the section of text starting with `<dict> ... </dict>` that you
    configured previously. See Restrictions or Passcode as an example. The section
    contains a configuration type identifying its purpose, such as Restrictions.
    Navigate back to Custom Settings profile and paste the XML you copied in the
    text box.

8.  Remove the original payload you configured by selecting the base payload
    section and selecting the minus [-] button. You can now edit the profile by adding 
    custom XML code for the new functionality.

