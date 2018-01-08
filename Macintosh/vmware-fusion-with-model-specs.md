# VMware Fusion & Mac Model 

## From Erik, to do this in vfuse:

`vfuse -i something.dmg -s “C00A00ZVXXXX” –hw-model “MacBookAir5,2” (Added as of December 2016 to vfuse)`

## From Charles, to do this without vfuse pop these into your vmx:

```
serialNumber.reflectHost = “FALSE”
serialNumber = “C00A00ZVXXXX” (replace serial number with your DEP enabled Mac’s SN)
hw.model.reflectHost = “FALSE”
hw.model = “MacBookAir5,2” (replace with proper hardware identifier)
smbios.reflectHost = “FALSE”
```

