# Removing Firmware Passwords

Only Apple Retail Stores or Apple Authorized Service Providers can unlock the following Mac models when protected by a firmware password:

- iMac (Mid 2011 and later)
- MacBook (Retina, 12-inch, Early 2015 and later)
- MacBook Air (Late 2010 and later)
- MacBook Pro (Early 2011 and later)
- Mac mini (Mid 2011 and later)
- Mac Pro (Late 2013)

## Lost Firmware Password

1. Start up the computer to the password entry screen by pressing and holding the Option key.

2. Press the key sequence Shift + Control + Command + Option + S at this screen. A one-time use "Hash" code will appear. The code is case-sensitive, so provide TSPS with the Hash exactly as it appears on the customer's screen.

3. Shut down the customer's computer.

4. Contact TSPS via chat. Select Yes for the pre-chat question regarding firmware reset and provide the Hash to the advisor assisting you.

5. TSPS will provide a signed binary file to be copied to a USB storage device (such as a flash formatted FAT or a USB hard drive with Mac OS Extended with GUID partition table). MacBook (Retina, 12-inch, Early 2015) and later requires an adapter to attach the USB device. The USB-C to USB adapter is recommended. Be sure you have enough battery power to complete the procedure.
7. Insert the drive into the computer while it is off.

8. Start up the computer while pressing and holding the Option key. Continue holding the Option key until the boot picker in EFI appears and confirm the password has been removed. If the computer does not start up without the password prompt after following these steps and while you are holding down the Option key, either the Hash was provided incorrectly to TSPS or the file did not read off the drive successfully. The file may have been read correctly but confirmed it does not belong in the computer.  Work with TSPS to troubleshoot these issues if necessary.

### Multiple Computers

If multiple computers have been impacted, TSPS can handle up to 500 computers with a single file.

- Provide all the Hash keys in a new-line delimited text file (not RTF, but pure plain text) with no new line at the end. These files can be produced in TextEdit on Mac OS X, or files with multiple entries using vim on the command line.

- For example:

  > V400300C1231MED144431A4F414420DDE5F1  
C455300Z555ABJ1118713148F413390ACE341  
C891200J18334D1099A3B6DD004E3F1A0122  
(No new line after the last entry.)

### Removing the Firmware Password

After you receive the signed binary file from TSPS, use this procedure to reset the EFI firmware password:

1. Format a Flash drive GUID partition scheme and Mac OS Extended format. Name it Firmware.

2. Drag the attached SCBO-signed.bin file to your Desktop. If you are using webmail you will need to save the attachment to your Desktop.

3. Open Terminal.

4. Paste the following command into the Terminal window and press Enter:

    `cp ~/Desktop/SCBO-signed.bin /Volumes/Firmware/.SCBO`

    You should get a new line with no errors.

5. Paste this command into the Terminal window and press Enter:

    `cp ~/Desktop/SCBO-signed.bin /Volumes/Firmware/._SCBO`

    You should get a new line with no errors.

6. Eject the Flash drive.

7. Turn off the customer's computer.

8. Insert the Flash drive into the customer's computer.

9. Turn on the customer's computer while pressing and holding the Option key.

10. You should see the lock symbol for a moment, and then the computer should restart to the Startup Manager.

11. If you still see a four-digit passcode lock after these steps at startup, reset the NVRAM by holding down Command-Option-P-R while restarting the computer. Hold these keys down for at least 20 seconds to ensure that your Mac completes the process correctly. Then release the keys.
