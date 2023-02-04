# Networksetup Commands

**Location**

- /usr/sbin/networksetup

**List Network Interfaces according to Priority**

`networksetup --listnetworkserviceorder`

**Connect to WiFi Network**

`networksetup -setairportnetwork [interface] [SSID] [password]`

    wifi=$(`networksetup -setairportnetwork [interface] [SSID] [password]`)

****
