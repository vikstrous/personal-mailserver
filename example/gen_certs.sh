### SSL keys

#TODO: modify this script to ask for you domain name, low/high security, self signed or not

# make sure the secrets directory exists

mkdir -p secrets/tls

openssl genrsa -out secrets/tls/key.pem 2048
openssl req -new -key files/secrets/tls/key.pem -out ./csr.pem

# Now get ./csr.pem signed by a CA and then put the CA's certificate (chain) into roles/personal-mailserver/files/secrets/tls/cert.pem

### SSL keys with a self signed cert:

#openssl req -x509 -newkey rsa:2048 -keyout roles/personal-mailserver/files/secrets/tls/key.pem -out roles/personal-mailserver/files/secrets/tls/cert.pem -days 365 -nodes

### DKIM Keys

# high security (might not work with some domain name registrars)
#opendkim-genkey -b 2048 -d viktorstanchev.com

# low security
opendkim-genkey -b 1024 -d viktorstanchev.com

# put the dkim key in secrets/opendkim/default.private
