# Why is 192.168.x.x/16 Private

The IP address 192.168.0.0 is the start of the Class C private range. By
convention, network routers and other gateways use 192.168.0.0 to reference a
private network generically. You should not attempt to set 192.168.0.0 as a
static IP address for any host, because it is reserved for use as a network 
address.

The extent of the 192.168.0.0 network depends on the network mask configured.
For example, 192.168.0.0/16 represents the private network with IP address range
192.168.0.0 - 192.168.255.255. Broadband routers more often use the Class C
default 192.168.0.0/24 mask with range 192.168.0.0 - 192.168.0.255. Routers on
these networks conventionally use IP address 192.168.0.1.

Being private, 192.168.0.0, 192.168.0.1 and all other addresses within this
network cannot be used on the Internet.
