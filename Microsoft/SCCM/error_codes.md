# SCCM Error Codes

## smsts.log locations

- The location of this log file keeps changing depending upon the state and type of Task Sequence.
  - Windows PE before the hard disk are formatted: x:\windows\temp\smstslog\smsts.log
  - Windows PE after the hard disk are formatted: x:\smstslog\smsts.log
  - Windows OS before the SCCM client is installed: c:\_SMSTaskSequence\Logs\Smstslog\smsts.log
  - Windows OS after the SCCM client is installed: c:\windows\ccm\logs\Smstslog\smsts.log
  - Windows OS after the Task Sequence is complete: c:\windows\ccm\logs\smsts.log

## 0x80070490

**Possible Error Messages**

- Failed to stage WinPE
- Failed to find the system root for the applied OS

**Documentation**

- [UEFI task sequence fails to apply operating system image](https://social.technet.microsoft.com/Forums/en-US/f6d6d07c-bc10-4395-96e7-5c199d70d4e1/uefi-task-sequence-fails-to-apply-operating-system-image?forum=configmanagerosd)

  - The reason for this is SCCM (without MDT) does not have the ability to correctly state images in UEFI mode.

- [ConfigMgr 2012: Staging of WinPE Is Not Fully Supported in UEFI-GPT Deployment Scenarios](https://social.technet.microsoft.com/Forums/en-US/d39d36d9-8177-4a37-8fbc-b7ecfaaa7929/configmgr-2012-staging-of-winpe-is-not-fully-supported-in-uefigpt-deployment-scenarios?forum=configmanagerosd)

- [OSD fails with error 80070490](https://sccmdiet.wordpress.com/2014/04/23/osd-fails-with-error-80070490/)

**Solutions**

- Use SCCM Deployment with MDT to build UEFI functionality into the boot media
- Make sure the correct image (i.e. 1-1, 2-2, ...) is being applied to the TS.
- Check to see if RAID is selected in BIOS under the SATA settings

## 0x80070032

**Possible Error Messages**

- Failed to stage WinPE. Code
- Failed to prepare the system partition for staging. The request is not supported. (Error: 80070032; Source: Windows)
- The active system partition on a MBR system must be NTFS

**Fix**

- The Fix is to clean the hard drive used **diskpart** (Sometimes it requires a complete reformat. This can be done using **diskpart** as well.)

  1. f8
  2. diskpart
  3. list disk
  4. select disk [#]
  5. clean
  6. exit
  7. Reboot

**Resources**

- https://social.technet.microsoft.com/Forums/systemcenter/en-US/1564eb5b-54dd-4f4f-889f-03f7ad010cd7/failed-to-run-task-sequence-error-0x80070032?forum=configmgrgeneral

## 0X80091007

**Error Message**

- The hash value is not correct

  > Task Sequence: Install Windows XXX has failed with error code (0X80091007). For more information, please contact your system administrator or helpdesk operator.

**Fix**

1. Update the package and wait for 1 or 2 hours, depending upon the connectivity.  
2. Check the CAS.log to confirm whether issue has resolved or not.
3. If “Not Resolved” then go to step 4.  
4. Sometimes Hash Mismatch may happen because of some hidden files. To resolve that open up a command window in the root director that contains your package.  

    Type Dir /S /A:H and hit enter.  
    Type attrib -H /S.

5. Update the package and wait for 1 or 2 hours, depending upon the connectivity. If issue still persists go to step 6.  
6. Remove the package and wait for 1 0r 2 hours (ensure that the package is removed from the DP). Also, I would suggest you to remove PCK file related to that package.  
7. Re distribute the package and check whether issue is resolved.

**Resources**

- http://www.itexperience.net/2010/08/18/error-code-0x80091007-during-task-sequence/
- https://social.technet.microsoft.com/wiki/contents/articles/6562.configmgr-sccm-hash-mismatch-issue.aspx

## 0x8009310b

**Error Message**

- An error occurred while retrieving policy for this computer

**Smsts.log Data**

  > Failed to download policy **KSU2002D**-KSU0004F-6F6BCC28 (Code 0x8009310b).	TSMBootstrap	4/5/2017 2:27:03 PM	1312 (0x0520)

The problematic policy can be determined using the first 8 characters of the policy code above.

  > KSU2002D

- In the SCCM console go to Monitoring ---> Deployments
- from the “Add Criteria” button choose “Deployment ID” and type in the above code.  

**Fix**

- Remove the deployment then re deploy the task sequence to the collection.

**Resources**

- http://support.risualblogs.com/blog/2013/10/10/an-error-occurred-while-retrieving-policy-for-this-computer-0x8009310b-sccm-2012/

## 0x80004005

**Error Messages**

- Failed to get client identity
- Failed to read client identity
- Failed to find the source drive where WinPE was booted from

**Smsts.log Data**

  > reply has no message header marker  
  Failed to get client identity (80004005)  
  Failed to read client identity (Code 0x80004005)   
  Failed to get client identity.

**SCCM console warning log**

  > Warning	Milestone	LB1	4/18/2017 11:50:17 AM	[sccm management point server]	SMS_MP_CONTROL_MANAGER	5446	MP has rejected the request because CD(SMSID = 995232ED-98CF-49F1-9416-231E142648CC) certificate has expired.	5116	1620  
  ...

- It appears that the error is due to the certificate associate with the particular boot media has expired.

**Fix**

- Recreate the boot media and extend the certificate expiration if needed.

**Resource**

- https://sccmentor.com/2015/06/15/failed-to-get-client-identity-during-configmgr-osd/

## 0x8007000F

**Error Message**

  > An error occurred while starting the task sequence (0x8007000F). For more information, contact your system administrator or helpdesk operator.

- The SCCM error 0x8007000F could mean a few different things. First of all, SCCM might not be able to format or find a hard drive in the target computer. The only way to fix this issue is to reformat the hard drive or swap the hard drive all together before continuing with the imaging process.

    1. f8
    2. diskpart
    3. list disk
    4. select disk [#]
    5. clean
    6. exit
    7. Reboot

    The 0x8007000F error could also happen when the hard drive BIOS setting is set to RAID instead of AHCI or IDE.

## 8004242C

**Error Messages**

- Failed to partition disk0 UEFI - on MacBook Pro 2016

**Fix**

- Increase the size of the UEFI partition to 512MB from 250MB in the Task Sequence.

**Resources**

- https://social.technet.microsoft.com/Forums/en-US/163e02af-d341-4d61-8bf4-40039292259c/os-deployment-error-in-test-lab-error-code-0x8004242c?forum=configmanagerosd
