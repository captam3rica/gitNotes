################################################
\\   Another Query for Fac Staff Disk Usage   //
################################################

select distinct

SMS_R_System.Name,
SMS_R_System.ResourceDomainORWorkgroup, SMS_R_System.OperatingSystemNameandVersion,
SMS_R_System.Build,
SMS_G_System_LOGICAL_DISK.FreeSpace,
SMS_G_System_LOGICAL_DISK.Size,
SMS_R_System.Client,
SMS_R_System.LastLogonUserName,
SMS_R_System.IPAddresses,
SMS_R_System.MACAddresses,
SMS_R_System.IsVirtualMachine,
SMS_R_System.SMSUniqueIdentifier

from  SMS_R_System

inner join SMS_G_System_LOGICAL_DISK on SMS_G_System_LOGICAL_DISK.ResourceID = SMS_R_System.ResourceId

where

SMS_R_System.Name like "%P[0-9][0-9][0-9][0-9][0-9]%" or
SMS_R_System.Name like "LTKSUNS%" or
SMS_R_System.Name like "KSUNS%"

order by SMS_R_System.Name
