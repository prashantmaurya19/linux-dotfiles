
# Use Bluetooth by Command Line


## start Bluetooth in system
```
systemctl start bluetooth.service
```

## stop Bluetooth in system
```
systemctl stop bluetooth.service
```

## restart Bluetooth in system
```
systemctl restart bluetooth.service
```

## for power on bluetoothctl
```
bluetoothctl power on
```
## for unblocking bluetoothctl
```
rfkill unblock bluetooth
```

## Use bluetoothctl

### for pairing 
```
pair device_id
```

### for connect (use it for earphone and handphones)
```
connect device_id
```

### for scan
```
scan on/off 
```

### for removeing device
```
remove device_id
```


## for information
[click here](https://documentation.ubuntu.com/core/explanation/system-snaps/bluetooth/pairing/index.html)



