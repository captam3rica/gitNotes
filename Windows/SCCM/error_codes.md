# SCCM Error Codes

## smsts.log locations

- The location of this log file keeps changing depending upon the state and type of Task Sequence.
  - Windows PE before the hard disk are formatted: x:\windows\temp\smstslog\smsts.log
  - Windows PE after the hard disk are formatted: x:\smstslog\smsts.log
  - Windows OS before the SCCM client is installed: c:\_SMSTaskSequence\Logs\Smstslog\smsts.log
  - Windows OS after the SCCM client is installed: c:\windows\ccm\logs\Smstslog\smsts.log
  - Windows OS after the Task Sequence is complete: c:\windows\ccm\logs\smsts.log

## 0x8009310b | An error occurred while retrieving policy for this computer

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

## 0x80004005 | Failed to get client identity | Failed to read client identity

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

- Recreate the boot media and extend the expiration time if needed.

**Resource**

- https://sccmentor.com/2015/06/15/failed-to-get-client-identity-during-configmgr-osd/

## 0x8007000F | OSD Failed to run Task Sequence

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
