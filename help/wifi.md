
# Wifi Handling by (nmcli)

## list wifi routers
```
nmcli device wifi list
```

## connect wifi router
```
nmcli device wifi connect <SSID> password <password>
```

## diconnect wifi router -> (<device_name> can be obtain by nmcli connection show)
```
nmcli device disconnect <device_name>
```

## check device_name
```
nmcli connection show
```

## show connected wifi info
```
nmcli device wifi show
```
