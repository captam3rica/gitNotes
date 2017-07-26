# Zero Touch Windows Deployments

- Install existing image package
- Build and capture reference image
- Install existing image package to a virtual hard disk
- Create new custom TS

## OSD Part 1

**Boot Image**

- Prestart commands - for BIOS updates etc.
- Enable command support to get F8 functionality in WinPE

**Operating System Images**

- Here is where you tell SCCM where to find wim files that have already been created using MDT.
  - MDT to create Images. Creates a cleaner image, and creates the image a whole lot faster.

**Task Sequences**

- name, boot image to use, browse for image package and select wim
- Partition adn format the target computer
- Licensing information (optional)
- Enable to local admin and specify credentials
- Join Domain or Work Group
  - Browse to location of account
  - Verify with AD to confirm
  - Test connection
- Config manager client package
- 
