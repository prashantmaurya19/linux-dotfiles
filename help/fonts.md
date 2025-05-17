# How to install fonts on ubuntu

## Move font to ~/.fonts/ directory
```
mv <font-name> ~/.fonts/
```

## rebuild font cache
```
fc-cache -f -v
```
## check font is installed of not (if font is found then its installed)
```
fc-list | grep "<name-of-font>
```
