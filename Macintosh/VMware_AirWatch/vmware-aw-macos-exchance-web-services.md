# Config Exchange Web Services Profile

**Note**: Contacts will only be configured with macOS 10.7(Lion) & 10.8
(Mountain Lion)

Go to **`Devices > Profiles & Resources > Profiles > Add > Apple macOS > User
Profile`**

1. Configure [General Settings](https://github.com/captam3rica/gitNotes/blob/master/Macintosh/vmware-aw-general-settings.md)

2. Select **Exchange Web Services** payload

3.  Cofigure the following settings:

-   **Email Client**: 

    -   Select the Native Mail client or Outlook
    -   Outlook requrires AW Agent v1.1.0 or better

-   **Account Name**

-   **Exchange Host**: Appears with MS Outlook is Selected

-   **Exchange Port**: Appears with MS Outlook is Selected

-   **Use SSL**: Appears with MS Outlook is Selected

-   **Delete all user data when profile is removed**: Appears with MS Outlook is Selected

    **Note**: Do not use this option if deploying to personal device. Deletes
    everything from Microsoft User Data folder.

-   **Username**

-   **Email Address**

-   **Full Name**: Appears with MS Outlook is Selected

-   **Password**

-   **Payload Cert**: For EAS use. Appears when native mail client is selected.

-   **Domain**: Appears with MS Outlook is Selected

4.  More Native client options

-   **Internal Exchange Host**: Name of secure server for *EAS use. 
-   **Port**
-   **Internal Server Path**: Path for secure server
-   **Use SSL for internal Exchange host**
-   **External Exchange host**: External server for *EAS use
-   **External Port**
-   **External Server Path**
-   **Use SSL for external Exchange Host**

5.  Config **Directory Services** for MS Outlook.

-   **Directory Server**: Location for secure server
-   **Directory Server port**
-   **Search Base**
-   **Directory Server requires SSL**

6. **Save & Pub** to push profile to devices.

\* **Exchange ActiveSync(EAS)**

Proprietary protocol for syncing email, contacts, calendar, tasks, and notes
from a msg server to a smartphone or other mobile. Can also provide MDM and
policy controls. Protocol base on `XML`. 
