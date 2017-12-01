# Auto Boot

Article ID:TP1484
Last Modified: 27 Jun 2017

### Auto Boot for MacBook Pro (2016 and 2017) and MacBook (Retina, 12-inch, 2017)

**Boot on Lid Open and Boot on AC Attach** are two features that automatically turn on the computer. These features must to be disabled prior to any repair that involves removing the bottom case. After the repair is complete, these features must be re-enabled.

#### Boot on Lid Open occurs when:

- the computer is shut down and you open the display to use the computer.
- the battery has enough power (otherwise the computer will show the battery charging icon).

#### Boot on AC Attach occurs when:

- the computer is shut down while the display is open, and then you plug in the AC power cord.
- the computer is shut down while the display is closed and an external monitor is attached, and then you plug in the AC power cord.

  **Important:** Before you begin any repair, disable both features and unplug the computer for the duration of the repair. After the repair is complete, re-enable these features.

#### To disable both features before a repair:

1. Double click on the drive that contains the macOS.
2. Open the Applications folder.
3. Open the Utilities folder.
4. Double click on the Terminal application.
5. Type the following text EXACTLY as shown (the last two characters are zeroes):  

        $ sudo nvram AutoBoot=%00

#### To re-enable both features after a repair:

1. Double click on the drive that contains the macOS.
2. Open the Applications folder.
3. Open the Utilities folder.
4. Double click on the Terminal application.
5. Type the following text EXACTLY as shown (the second to last character is a zero):

        $ sudo nvram AutoBoot=%03

6. Shut down the computer and close the display.
7. Open the display and verify that the computer turns on.
