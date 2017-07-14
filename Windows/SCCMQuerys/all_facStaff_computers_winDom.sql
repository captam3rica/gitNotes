select distinct SMS_R_System.Name,
SMS_R_System.ResourceDomainORWorkgroup,
SMS_R_System.OperatingSystemNameandVersion,
SMS_R_System.Client,
SMS_R_System.ClientType,
SMS_R_System.LastLogonUserName,
SMS_R_System.IPAddresses, 
SMS_R_System.SMSUniqueIdentifier,
SMS_R_System.ResourceId
from  SMS_R_System
where SMS_R_System.Name like "%KSUP%"
