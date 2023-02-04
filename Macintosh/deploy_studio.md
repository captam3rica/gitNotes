# Deploy Studio

#### Allow Incoming connects to

- SMB
- SSH
- Remote Management (ARD)
- Screen Sharing

#### Optional Depending on Requirements

- bootpd
- caldavd
- DeployStudioServer
- kdc
- launchd
- manster
- NetBootClientStatus
- nfsd
- rpc.lockd
- rpc.rquotad
- rpc.statd
- rpcbind
- rpcinfo
- screensharingd
- sdd
- servermgr-listener
- tftpd

### Ports

PORT           SERVICE
22/tcp         ssh
80/tcp         http
88/tcp         kerberos-sec
111/tcp        rpcbind
443/tcp        https
445/tcp        microsoft-ds
548/tcp        afp
999/tcp        garcon
1021/tcp       exp1
1023/tcp       netvenuechat
2049/tcp       nfs
3283/tcp       netassistant
5900/tcp       vnc
60443/tcp      unknown
