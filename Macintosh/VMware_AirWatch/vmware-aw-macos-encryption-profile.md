# macOS Disk Encryption Profile

-   AW can force the user to complete the encryption process.
-   Can store the recovery keys in AW for later use

## Corp & and Personal Recovery

If the user and the Corp both need a key for encryption recovery.

1.  Config new **Disk Encryption** profile

2.  Choost **Personal & Corp** as the type and config the recovery key settings
    as needed.

3.  Config FileVault master keychain. 

4.  Upload FileVaultMaster.cer to the Disk Encryption profile to encrypt the
    assigned computers with your Corp Recovery Key.

Once FileVault is enabled on the device, the Personal Recovery Key will be
reported to the server. 

## Corp Recovery Key

-   Use a single Corp recovery key to decrypt any device. 

1.  Config a new **Disk Encryption** profile.

2.  Choose **Corporate** as the recovery type and configure the recovery key
    settings as needed.

3.  Config FileVault master keychain. 

4.  Upload FileVaultMaster.cer to the Disk Encryption profile to encrypt the
    assigned computers with your Corp Recovery Key.

Once FileVault is enabled on the device, the Corporate  Recovery Key will be
reported to the server. 

### Config FileVault Corporate Recovery Key for macOS

-   A recovery key can be used if the corporate password for FileVault is
    forgotten.

Go to **`System Preferences > Users & Groups > Unlock the padlock in bottom left >
    click the Gear > select Set Master Password ...`**

1.  Go to **`Library > Keychains`** and look for the `FileVaultMaster.keychain`
    and `FileVaultMaster.cer` files.

2.  Save the `FileVaultMaster.cer` to a safe place. (used for decryption later)

The FileVaultMaster.cer can now be uploaded to the AW Disk Encryption profile
for distribution to devices. 

## Personal Recovery Key

-   Allows the user to encrypt their own device.

-   The key can also be sent to the AW console so that admins can decrypt the
    device if necessary. 

-   AW can audit access to these keys.

-   Once the profile gets to the device, the user will be prompted and taken
    through the encryption process.

### Enable Personal Recovery Encryption

1.  Config a new **Disk Encryption** profile.

2.  Choose **Personal** as the type and config settings as needed.

Once FileVault is enabled on the device, the Personal Recovery Key will be
reported to the AW server or other designated Server.

### Recover an Encrypted Disk Using Personal Recovery Key

1.  Boot to recovery mode reboot the computer and hold `cmd + R`

2.  Open a terminal and run the following command:

-   `diskutil cs list`: displays logical CoreStorage volumes.

3.  Find and copy the Logical Volume UUID.

4.  Run the following command to unlock the logical volume:

-   `diskutil cs unlockVolume [copied-UUID-here]`
-   Enter your password for the recovery key

5.  Now to decrypt the volume:

-   `diskutil cs revert [copied-UUID-here]`
-   Enter the recovery key when prompted.

    Monitor the decryption progress with the following command:

    -   `diskutil cs list`: Under the `Logical Volume Family` it should say that
        the **Conversion Status** is **Converting**

