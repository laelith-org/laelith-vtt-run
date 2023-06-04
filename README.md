# Laelith pod run

## Configuration
require podman
configure /etc/containers/registries.conf with:
```
unqualified-search-registries=["docker.io"]
```
change /home/vince in command with your home.
## Run
run 0_run.sh to run nginx+laelith.

## TLS
```
mkdir letsencrypt
```
run certbot.sh to create a valid ssl certificate.

### TLS auto renew
```
sudo crontab -e
```
Add line
```
0 0 1 * * /home/vince/run/certbot_renew.sh
```
