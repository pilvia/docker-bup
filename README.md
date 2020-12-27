# docker-bup
Docker image for Bup https://bup.github.io/


## Usage
```
docker run -v /folder/for/bup-repository:/root docker init
docker run -v /folder/for/bup-repository:/root -v /folder/to/backup:/backupthis docker index /backupthis
docker run -v /folder/for/bup-repository:/root -v /folder/to/backup:/backupthis docker save -n nameofbackup /backupthis
```
## General usage
https://github.com/bup/bup#using-bup
