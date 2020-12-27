# docker-bup
Docker image for Bup https://bup.github.io/


## Usage example
```
docker run -v /folder/for/bup-repository:/root docker.io/pilvia/bup init
docker run -v /folder/for/bup-repository:/root -v /folder/to/backup:/backupthis docker.io/pilvia/bup index /backupthis
docker run -v /folder/for/bup-repository:/root -v /folder/to/backup:/backupthis docker.io/pilvia/bup save -n nameofbackup /backupthis
```
## General usage
https://github.com/bup/bup#using-bup
