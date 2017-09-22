# Handy Commands

## PowerShell

### PowerShell Env Manipulation

- set path=%path%;[location/to/add/to/path]
- get-executionpolicy - see the current execution level
- new-alias [alias] [command it is replacing]
    - Add it to proile - `"New-Alias which get-command" | add-content $profile`

### Setting the Execution Policy  

1. Restricted (default behavior)
2. All Signed
    - If the execution policy is set to All Signed then scripts will be allowed to run, but only if they are signed by a trusted publisher.
3. Remote Signed
    -  If the execution policy is set to Remote Signed, any PowerShell scripts that have been locally created will be allowed to run. Scripts created remotely are allowed to run only if they are signed by a trusted publisher.
4. Unrestricted (Wheeeeeeeeeeee!)

- set-executionpolicy -scope currentuser
  - Unrestricted (to run PowerShell as admin)

###  Misc. PowerShell Commands

- export-csv - pipe another command to this
- select-object Name, Status, etc - narrow down the output

## User Account Stuff

### USER & GROUP Manipulation

`net localgroup [group name] [Domain\username] /add`

`get-ciminstance win32_account -filter "sid='S-1-5-21-2250542124-3280448597-2353175939-1019'"`

`Get-WSManInstance -ResourceURI "wmicimv2/Win32_SID" -SelectorSet @{SID="S-1-5-21-2250542124-3280448597-2353175939-1019"}`

- can get a bit more granular with this command

## System Stuff

### BIOS & UEFI Stuff

**Determine WinPE Boot Environment**

Check the ***HKLM\System\CurrentControlSet\Control\PEFirmwareType*** registry value to see if the PC is booted to UEFI or BIOS mode. Note: you may need to run wpeutil UpdateBootInfo to make sure this value is present.

- `reg query HKLM\System\CurrentControlSet\Control /v PEFirmwareType`
  - This command returns 0x1 if the PC is booted into BIOS mode, or 0x2 if the PC is booted in UEFI mode

Sample script:

    wpeutil UpdateBootInfo

    for /f "tokens=2* delims=  " %%A in ('reg query HKLM\System\CurrentControlSet\Control /v PEFirmwareType') DO SET Firmware=%%B

    :: Note: delims is a TAB followed by a space.

    if %Firmware%==0x1 echo The PC is booted in BIOS mode.
    if %Firmware%==0x2 echo The PC is booted in UEFI mode.

**Stop BIOS Boot or UEFI Boot**

You can remove the boot files for UEFI mode or BIOS mode to prevent the PC from booting in the wrong mode. If the PC firmware is set up to boot in the wrong mode, the media will immediately fail to boot, allowing you to immediately retry booting the PC into the correct mode.

- Boot in UEFI mode: To prevent Windows PE from booting in BIOS mode, remove the bootmgr file on the root of the media.
- Boot in BIOS mode: To prevent Windows PE from booting in UEFI mode, remove the efi folder on the root of the media.

### Process Manipulation

- Stopping a process

  `stop-process -name [process name]`  
  `stop-process -id [number]`  

- get-service - list services
- get-process - lists running processes

### Event Logs

- get-eventlog -log "application"

### Installing Windows Components

- Install-WindowsFeature rsat-adds - this can only be used on Windows Server.
-
### Mounting network shares via cmd

`net use <driveletter>: \\<server>\<sharename> /USER:<domain>\<username> <password> /PERSISTENT:YES`

## Software Stuff

## Getting Product UUIDs

`get-wmicobject -class win32_product`

`get-ciminstance -classname win32_product | select name, identifyingnumber`


## Install Chocolatey

Run PowerShell as admin the run the following commands

    > `set-executionpolicy -scope currentuser Unrestricted`

### Download Chocolatey

    > iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))


### Install Git

    > choco install git.install -params '"/GitOnlyOnPath"' -y

### Install Python 3

    > choco install python -y

Add `pip` to path

    > [Environment]::SetEnvironmentVariable("Path", "$env:Path;C:\tools\python\Scripts\", "User")
