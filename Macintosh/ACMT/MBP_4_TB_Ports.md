# MacBook Pro with 4 Thunderbolt 3 Ports

- 4 Thunderbolt ports
- 1 Aux port
- 2 2017 models
  - MBP with 4 Thunderbolt 3 ports
  - MBP 15-inch 2017

**MBP by model number**

  - MacBook Pro (13­-inch, 2016, Four Thunderbolt 3 Ports): Model Number A1706; EMC number 3071
  - MacBook Pro (13­-inch, 2017, Four Thunderbolt 3 Ports): Model Number A1706; EMC number 3163
  - MacBook Pro (15­-inch, 2016): Model number A1707; EMC number 3072
  - MacBook Pro (15­-inch, 2017): Model number A1707; EMC number 3162

## Auto Boot

MBPs with 4 TB 3 ports will startup automatically when lid is opened or upon connection to power source. Enabled by default.

- Boot On lid opening
  - the computer is shut down and you open the display to use the computer
  - the battery has enough power (otherwise the computer will show the battery charging icon)
- Boot on AC attachment
  - the computer is shut down while the display is open, and then you plug in the AC power cord
  - the computer is shut down while the display is closed and an external monitor is attached, and then you plug in the AC power cord

### Auto Boot & Repairs | Article ID: TP1484

- Always disable Auto Boot before repairs that require bottom case removal. Re-enable after repair is complete.

#### Disable Auto Boot

1. Double click on the drive that contains the macOS.
2. Open the Applications folder.
3. Open the Utilities folder.
4. Double click on the Terminal application.
5. Type the following text EXACTLY as shown (the last two characters are zeroes):  
    - `sudo nvram AutoBoot=%00`

#### Enabled Auto Boot

1. Double click on the drive that contains the macOS.
2. Open the Applications folder.
3. Open the Utilities folder.
4. Double click on the Terminal application.
5. Type the following text EXACTLY as shown (the second to last character is a zero):
    - `sudo nvram AutoBoot=%03`
6. Shut down the computer and close the display.
7. Open the display and verify that the computer turns on.

## Using the Touch Bar | HT207055

## Touch ID | HT207054

## Troubleshooting

- No startup chime
  - HT204063 - How to reset NVRAM on your Mac
  - HT201262 - Use safe mode to isolate issues with your Mac
  - IT1463 - No Power

## Take Appart

- Logic Board
- Air vent / Antenna
- Display assembly replacement
- Touch ID
- Keycap replacement

## Service Simulations

- LB take apart
  - Hinge screws - 923-01425
  - Right fan - 923-01427
  - Left fan - 923-01427

- Touch ID testing is now in AST2
- Touch Bar testing is now in AST2
  - Pixel Anomalies test
- Logic Board to Top Case test to insure proper pairing
