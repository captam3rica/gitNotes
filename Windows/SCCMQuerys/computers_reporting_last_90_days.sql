select distinct SMS_R_System.Name,
SMS_R_System.ResourceDomainORWorkgroup, SMS_R_System.OperatingSystemNameandVersion,
SMS_R_System.Client,
SMS_R_System.ClientType,
SMS_R_System.LastLogonUserName,
SMS_R_System.IPAddresses,
SMS_G_System_CH_ClientSummary.LastPolicyRequest,
SMS_R_System.SMSUniqueIdentifier,
SMS_R_System.ResourceId
from SMS_R_System
inner join SMS_G_System_CH_ClientSummary on SMS_G_System_CH_ClientSummary.ResourceID = SMS_R_System.ResourceId
where SMS_G_System_CH_ClientSummary.LastPolicyRequest >= DateAdd(day, -90,GetDate())
and SMS_R_System.Name like "%KSUP%"
