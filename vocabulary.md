# Vocabulary

## Words 

-   **transient**

    Last or working only for a short time. Impermanent.

-   **paginate**

    To indicate the sequence of pages in a book, manuscript, etc. by placing
    numbers or other character on each leaf. To divide an electronic document
    into pages, as for printing.

-   **disparate**

    Fundamentally distinct or different in kind; entirely dissimilar. Containing
    opposing elements.

## Technology Concepts 

-  **Why `__name__`** 

    iOne reason for doing this is that sometimes you write a module (a .py file)
    where it can be executed directly. Alternatively, it can also be imported
    and used in another module. By doing the main check, you can have that code
    only execute when you want to run the module as a program and not have it
    execute when someone just wants to import your module and call your 
    functions themselves.

-   **Dynamic Linker (dylb or `.dylib`)**

    The dynamic linker not only links the target executable to the shared
    libraries but also places machine code functions at specific address
    points in memory that the target executable knows about at link time.
    When an executable wishes to interact with the dynamic linker, it simply
    executes the machine-specific call or jump instruction to one of those 
    well-known address points. The executables on the macOS and iOS platforms
    often interact with the dynamic linker during the execution of the process;
    it is even known that an executable might interact with the dynamic linker,
    causing it to load more libraries and resolve more symbols, hours after it
    initially launches. 

-   **Representational state transfer (REST)** or **RESTful web services**

    Are a way of providing interoperability between computer systems on the 
    Internet. REST-compliant Web services allow requesting systems to access and 
    manipulate textual representations of Web resources using a uniform and 
    predefined set of stateless operations.

-   **iBeacon**

    Broadcast a low energy bluetooth signal to nearby electronic devices. Allows
    devices to perform certain actions when in close prox to an iBeacon. Track
    customers, device locations, or trigger a location-based action such as app
    check in or push notification.

-   **Link Layer Discovery Protocol (LLDP)** 

    Used by network devices for advertising their id, capabilities, and neighbors 
    on the IEEE 802 local area network, principally wired Ethernet.  Formally 
    referred to as Station and 

-   **Media Access Control Connectivity Discovery**

    LLDP performs functions similar to other popular protocols such as Cisco 
    Discovery Protocol, Foundry Discovery Protocol, Nortel Discovery Protocol, 
    and Link Layer Topology Discovery. Data collected in the MIB (DB) can be 
    queried by SNMP.

-   **RealTime Linux Kernel Scheduler (rtkit)**

    A real-time system is one that provides guaranteed system response times 
    for events and transactions--that is, every operation is expected to be 
    completed within a certain rigid time period. A system is classified as hard 
    real-time if missed deadlines cause system failure and soft real-time if the 
    system can tolerate some missed time constraints.

-   **socket**: 

    **Unix Domain Socket**

    An inter-process communication socket is a data communications endpoint for 
    exchanging data between processes executing on the same host operating system. 

    Unix domain sockets use the file system as their address name space.
    Processes reference Unix domain sockets as file system nodes, so two
    processes can communicate by opening the same socket

    In addition, processes may send file descriptors across a Unix domain socket
    connection using the `sendmsg()` and `recmsg()` system calls. This allows a
    receiving process to get access to a descriptor that it would otherwise not
    be able to access. 

-   **macOS Mobile Account**

    Allows the user's network account and network home directory to be copied locally
    for use on the device. The use will then use their network credentials to

-   **Exchange ActiveSync(EAS)**

    Proprietary protocol for syncing email, contacts, calendar, tasks, and notes
    from a msg server to a smartphone or other mobile. Can also provide MDM and
    policy controls. Protocol base on `XML`. 

-   **Namespace**

    A set of symbols that are used to organize objects of various kinds, so
    that these objects can be referred to by name.

-   **DDNS**:

    Method to auto update a name server in the DNS with its hostnames,
    addresses, or other info. Updates to DNS records without manual intervention (RFC 2136)

-   **Real Time Streaming Protocol (RTSP)**

    A network control protocol designed for use in media and comms systems to
    control streaming media servers. Used to est. and control media sessions
    between endpoints. Often used in conjuction with RTCP (Real-Time Control
    Protocol) for stream delivery. Developed by _RealNetworks_, _Netscape_, and
    _Columbia University_. (RFC 7826 - RTSPv2.0)

-   **Gopher Protocol**

    Designed for distributing, searching, and retrieving docs over the internet.
    Developed at the U. of Minnesota. Tried to compete with HTTP as the defacto
    www protocol in the early goings of the internet. Runs on the application
    layer. 

-   **Proxy Auto-Config (PAC)**

    Defines how a browser or device can dynamically and automatically choose the
    proper proxy server for the content begin accessed. Contains a java
    functions, which returns one or more access methods. Having multiple
    specifications allows for a fallback method in the event that the primary
    method fails.

-   **.lprog**

    A bundle file containing localization files for macOS software. Typically
    contains `.nip` files for a given lang along with string files and images if
    needed. (README or lic files) Used to customize install pkgs. 

-   **Registration Auth (RA)**

    Required so that all transmitted data can be signed.

-   **Simple Certificate Enrollment Protocol**

    Designed to make the issuing of digital certs as simple and scalable as
    possible. Most popular and widely available cert enrollment protocol. Was
    revived in 2015 by the Internet Engineering Task Force, and the algorithm
    was reworked to fix numerous bugs. 

-   **EAP (Extensible Authentication Protoco**

    An auth framework for providing the transport and usage of keying material
    and parameters generated by EAP methods. It is not a wired protocol. It only
    defines message formats. Many EAP variations exist. 

    **LEAP**

    Lightweight Extensible Authentication Protocol. Developed by CISCO. No
    native support in Windows. 

    **EAP-TLS**

    Uses the Transport Layer Protocol and is widely support in the wireless
    vendor space. Still considered one of the most secure EAP standards. As long
    as the user understands potential warnings about false credentials, and is
    universally supported by all manufacturers of wireless LAN hardware and
    software. EAP-TLS is natively supported in macOS 10.3 and up.
    wpa_supplicant, and apple iOS. (Win things too)

    **EAP-FAST**

    Flexible Auth via Secure Tunneling (RFC 4851). Developed by Cisco as a
    replacement for **LEAP**. Designed to address the weaknesses of LEAP while still
    keeping the "Lightweightness". Uses a Protected Access Credential (PAC) to
    est a TLS tunnel in which client creds are verified. Auto PAC is vulnerable
    due to the fact that an attacker could intercept the PAC transaction. This
    can be mitigated by manual PAC or using server certs fro the PAC
    provisioning process.

-   **ImageMagick**

    Program used for image creation and manipulation. Primarily commmand line
    based, and is available cross platform.

