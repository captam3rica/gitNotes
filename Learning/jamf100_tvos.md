# jamf 100 Study session

[Start Here](http://docs.jamf.com/education-services/jamf-100-course/1.1/Lesson_1__Course_Introduction.html)

## tvOS

### tvOS Fundamentals

**System Setup**

- **4th Gen Apple TV (4k)**
  - An Apple TV 4K or Apple TV (4th generation)
  - Personal Internet (Public and subscription networks with sign-in requirements won't work)
  - A TV or other display with an HDMI port
  - An HDMI cable (Apple recommends using an HDMI 2.0 or later compatible cable)

**User Interface, Settings, & Apps**

- 4th Gen Apple TVs support the *App Store*
- 1st, 2nd, and 3rd gen Apple TVs do not support 3rd party app downloads

### tvOS Management with a JSS

**DEP Enrollment**

Mobile Devices > PreStage Enrollments

- jamf 9.9.8 and tvOS 10.2 and up
- **Set Up with Device** - allows the user to set up Apple TVs with another device when placed in close proximity.
- MDM profile remains, even after resetting the device to *Factory Settings*
- Settings unique to tvOS
  - Configure with another device
  - Set up see the world screensavers

 **Apple Configurator 2 Enrollment**

 /Applications/Mac App Store
 /Applications/Apple Configurator 2
 Mobile Devices > Enrollment Profiles

 - 7 >= tvOS <= 10.1 or tvOS >= 10.2 if not in DEP
 - **Features**
   - asdfa
 - Internet connection, CA Cert,  and an MDM Profile are needed
   - Both files can be generated from the *JSS* under *Mobile Devices > Enrollment Profiles*
 - Can drag profiles on to the device in *Apple Configurator 2*

**Configuration Profiles**

Mobile Devices > Configuration Profiles
Mobile Devices > Configuration Profiles > Configuration Profile Name > Logs
Mobile Devices > Search Inventory > Mobile Device Name > History > Management History

- Payloads
  - Conference rooms
  - Wifi
  - Restrictions
    - Disable AirPlay
    - Require pass code for first time AirPlay (supervised only)
    - Disable control from iOS devices (supervised only)
    - Allow Keyboard Continuations
  - Single App Mode


**Conference Room Display**

Mobile Devices > Configuration Profiles
Mobile Devices > Configuration Profiles > Configuration Profile Name > Logs
Mobile Devices > Search Inventory > Mobile Device Name > History > Management History

- Similar to *Single App Mode* and utilizes *AirPlay*
- On-Screen message when turning on device
- Applies profile automatically

**Remote Commands**

Mobile Devices > Search Inventory > Apple TV Name > Management > Management Commands
Mobile Devices > Search Inventory > Search > Action > Send Remote Commands

- Options depend on the version of tvOS
- tvOS =< **10.2 only**
  - Restart
  - Remote wipe
