## To extract all files from an archive
```
unzip archive.zip
```

## To extract to a specific directory.
```
unzip archive.zip -d /path/to/destination
```
    
## To extract specific files.
```
unzip archive.zip file1.txt file2.jpg
```
    
## To extract all files matching a pattern:
```
unzip archive.zip "*.txt"
```
    
## To exclude certain files from extraction. 
```
unzip archive.zip -x "*.txt"
```
    
## To list the contents of an archive without extracting:
```
unzip -l archive.zip
```
    
## To test the integrity of the archive:
```
unzip -t archive.zip
```

# Common Options:
- -l: Lists the contents of the archive.
- -d: Specifies the destination directory for extracted files.
- -x: Excludes files from extraction.
- -t: Tests the archive for errors.
- -v: Lists archive files verbosely (verbose output).
- -n: Never overwrite existing files.
- -o: Overwrite existing files without prompting

