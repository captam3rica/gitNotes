# macOS Configuration files in VMwaer AirWatch

-   Retrieve preference files and convert to mobileconfig files (in the AirWatch Console?????)

-   Default preference locations

    -   ~/Library/Preferences
    -   ~/Library/Preferences/ByHost
    -   /Library/Preferences/


-   modifications with `defaults` command or other texted editor that can read XML files.

    -   vim (with some vundling)
    -   Atom IDE
    -   XCode
    -   TextWrangler
    -   ...


-   Use a converter to convert from binary to XML format

    -   `plutil -convert xml1 /location/of/plist/file`
    -   mcxToProfile is another good one: `./mcxToProfile.py filename.plist filename.mobileconfig`


-   uuidgen: generate a new universally unique id number.

-   In the **AirWatch** console, paste the custom XML.

Example

![AirWatch Custom preference setting](/home/captam3rica/Pictures/custom-settings-xml-profile-payload.png)
