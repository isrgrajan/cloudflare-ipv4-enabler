cfipv=$1
cfzone=$2
cfemail=$3
cfauth=$4

if [ "$cfipv" = "true" ]; then
cfipv=off;
else
cfipv=on;
fi

curl -X PATCH "https://api.cloudflare.com/client/v4/zones/$cfzone/settings/ipv6" \
     -H "X-Auth-Email: $cfemail" \
     -H "X-Auth-Key: $cfauth" \
     -H "Content-Type: application/json" \
     --data '{"value":"$cfipv"}'
