# Packet Filter Configuration

DeployStudioServer
kdc
launchd
rpc.lockd
rpc.rquotad
rpc.statd
screensharingd
sdd
servermgr-listener

## NetBoot

bootpd (DHCP) - UDP 67, 68 (NetBoot server & client)  
tftpd (TFTP) - UDP 69  
AppleFileServer (AFP) - TCP 548  
nfsd (NFS) - TCP/UDP 2049  
rpcbind (RPC) - TCP/UDP 111  
NetInfo - TCP/UDP 600-1023  
httpd (Web) - TCP 80  

## DeployStudioServer

## Application Firewall CLI Tools

- /usr/libexec/ApplicationFirewall/
  - Firewall
  - appfwloggerd
  - com.apple.alf.plist
  - socketfilterfw - can be used to configure AFW
    - --getloggingmode
    - --setloggingmode [throttled | brief | detail]
    - --listapps
  - socketfilterhelper

- Default config file: `/usr/libexec/ApplicationFirewall/com.apple.alf.plist`
- Running config file: `/Library/Preferences/com.apple.alf.plist`

- Stop AFW

      $ sudo launchctl unload /System/Library/LaunchAgents/com.apple.alf.useragent.plist
      $ sudo launchctl unload /System/Library/LaunchDaemons/com.apple.alf.agent.plist

- Start AFW

      $ sudo launchctl load /System/Library/LaunchAgents/com.apple.alf.useragent.plist
      $ sudo launchctl load /System/Library/LaunchDaemons/com.apple.alf.agent.plist

## PF Firewall

- /sbin/pfctl to control pf

### About

- Core Compoents
  - /etc/pf.anchors/com.apple (sub rulesets are in here)
  - /etc/pf.conf (main ruleset here)
  - /etc/pf.os
- pf uses "anchors" - Dynamic includes that can contain rules, options, tables, and even other anchors
- Create a LaunchDaemon so that pf will start reliably
- Rules must be loaded separately from enabling PF Firewall, either after enabling the firewall or disable it.
- Rules are primarily loaded from `/etc/pf.conf` but can be loaded from other files as well.
- 


### Commands & Flags

- sudo pfctl -s info: See if PF is enabled and for how long
- sudo pfctl -s rules
- sudo pfctl -s all: See Translated rules, Filter rules, Dummynet rules, Info, Timeouts, Limites, and OS Fingerprints.
- $ sudo pfctl -vs Anchors: view anchors in `pf.conf`
- sudo pfctl -a "full.path.to/anchor" -sr: to view the rules for that anchor

      pass in on p2p0 inet6 proto udp from any to any port = 5353 keep state
      pass out on p2p0 proto tcp all flags any keep state
- Reload PF: `$ sudo pfctl -f /etc/pf.conf`
- Flush Rules: `sudo pfctl -Fa -f /etc/pf.config`
- Clear stats: `sudo pfctl -z; pfctl -si`
- Parse but don't Load: `sudo pfctl -ngf /etc/pf.conf`
  - -g: gives extra output

### Configuring the PF Firewall

**Order of Things**

- macros: user defined variables such as IP address, interface names, etc
- Tables: Used to hold lists of IP addresses
- options: For controlling how PF works
- normalization
- queueing
- translation
- filtering

### Example Configuration in pf.anchors
edu.kennesaw.pf.conf

    ####################
    ### Custom Rules ###
    ####################

    ### Macro Information ###
    wired_int = "en0"
    wired_address = "10.97.53.20"

    # Allow all local loopback
    set skip on lo0

    # Normalize and defragment
    scrub in all

    # Default deny for ingres and egres
    block all

    # Allow incoming ICMP for en0
    pass in quick on $wired_int proto icmp

    # Allow SSH from remote
    pass in quick inet proto tcp from any to any port 22

    # Allow all outbound
    pass out all keep state

## Misc ...

Enable SSH from CLI:

`$ sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist`

Allow SSH through the AFW:

`$ sudo /usr/libexec/ApplicationFirewall/socketfilterfw --add /usr/libexec/sshd-keygen-wrapper`

Ports & Protocols used by Apple products:

https://support.apple.com/en-gb/HT202944

- When the application firewall was enabled, it use to enable PF as well with the pfctl -E command. However, this does not seem to be the case in MacOS Sierra.
