# IPv6

## Overview

- No more private address collisions.
- Network address translation (NAT) is optional, rather than a necessity.
- Simplified routing.
- Say good-bye to DHCP.
- 9 Hexadecimal numbers

## Basic Commands

### Ping IPv6

    $ ping6 -c2 ::1
    PING6(56=40+8+8 bytes) ::1 --> ::1
    16 bytes from ::1, icmp_seq=0 hlim=64 time=0.112 ms
    16 bytes from ::1, icmp_seq=1 hlim=64 time=0.142 ms

    --- ::1 ping6 statistics ---
    2 packets transmitted, 2 packets received, 0.0% packet loss
    round-trip min/avg/max/std-dev = 0.112/0.127/0.142/0.015 ms

::1 is shorthand for 0000:0000:0000:0000:0000:0000: 0000:0001.  Any one unbroken
sequence of consecutive zeros can be shortened to a pair of colons, and any quad
of all zeroes can be condensed to a single zero, like 0.0.0.0.0.0.0:1.

### LAN Discovery

Check for IPv6 neighbors on the LAN

    $ ping6 -c4 -I en0 ff02::1
    PING6(56=40+8+8 bytes) fe80::ea06:88ff:feca:9c57%en0 --> ff02::1

    fe80::12dd:b1ff:feee:ce59%en0,
    fe80::12dd:b1ff:fef2:cf7%en0,
    fe80::1af9:72e2:20dd:8885%en0,
    fe80::426c:8fff:fe03:d831%en0,
    fe80::426c:8fff:fe39:dab1%en0,
    fe80::426c:8fff:fe45:1bf5%en0,
    fe80::4639:c4ff:fe3b:9c12%en0,
    fe80::4658:29ff:feb8:2bb2%en0,
    fe80::7273:cbff:feb3:eecb%en0,
    fe80::72cd:60ff:fef4:17af%en0,
    fe80::8a63:dfff:fea1:7033%en0,
    fe80::9a5a:ebff:fedb:aadd%en0,
    fe80::d203:4bff:fe5d:ba9b%en0,
    fe80::daeb:97ff:fed2:aa3e%en0,
    fe80::e6ce:8fff:fe62:569e%en0,
    fe80::ea06:88ff:feca:9c57%en0,
    fe80::f6d9:fbff:fe75:fa29%en0
    [Removed Duplicate Addresses]

    --- ff02::1 ping6 statistics ---
    4 packets transmitted, 4 packets received, +51 duplicates, 0.0% packet loss
    round-trip min/avg/max/std-dev = 0.146/19.889/302.924/60.671 ms

Local-link addresses are all in the fe80::/10 address range. These are
comparable to the 169.254.0.0/16 address block in IPv4, the stateless address
auto-configuration blocks.

Now that we have connected to the above LAN IPv6 hosts they are in the IPv6
neighbor table, which is just like the ARP table from IPv4.

**On Linux**   
`ip -6 neigh show`  

**On Mac**   
`ndp -a`

**On Windows**  
`netsh interface ipv6 show neighbors`

The entries in the neighbor table is temporary and they will disappear if there
isn't any traffic to them in a few minutes.

### SSH & SCP

    $ scp test.txt phineas@\[fe80::221:97ff:feed:ef01%eth0\]:
    phineas@fe80::221:97ff:feed: ef01%eth0's password:
    test.txt 100%   19     0.0KB/s   00:00

### Find Your IPv6

    $ ifconfig en0 | grep --color "inet6"
    inet6 fe80::ea06:88ff:feca:9c57%en0 prefixlen 64 scopeid 0x4

### Assign an IPv6 address to your interface

`ip -6 addr add 2001::1/64 dev eth0`

To remove the address just user the `del` command in the `ip` utility

## Sweet Resources

[Network Rosetta](https://wikispaces.psu.edu/display/ipv6/IPv6+Rosetta+Stone)  
[Linux[dot]com](https://www.linux.com/learn/ipv6-crash-course-linux)
