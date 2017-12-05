# Alternate DEP Device Enrollment Flows

Combining the Apple DEP portal with the AW Self-Service Portal (SSP)

## Alt Enrollments

-   User generated tokens through the SSP.

    -   SSP must be enabled.
    -   The token is valid for the time set in the **Token Enrollment Settings**
        in the Admin portal.

-   The admin can generate a token from the DEP portal without inputing a device
    SN. 

    -   Admin or end-user can use this token to enroll a device.
    -   Token is valid for time specified in Admin Portal.
    -   Useful for cases where devices are not preassigned to users.

-   Admin generates a token via bulk upload in the Apple DEP Portal. Must
    specify device SN.

    -   Admin or end user enrolls device using token.
    -   No expiry date

