# uncomment for staging support: export options="--server https://acme-staging-v02.api.letsencrypt.org/directory"
export domain="vtt.laelith.com"
podman run --pod laelith -it --rm --volume /home/vince/run/nginx/site:/var/www/html --volume /home/vince/run/letsencrypt:/etc/letsencrypt certbot/certbot certonly --webroot $options -m vcarluer@outlook.com --agree-tos --eff-email -w /var/www/html/ -d $domain
