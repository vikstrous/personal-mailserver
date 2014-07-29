1. Fork this repo
2. Edit the hosts file in this directory to point to your own server instead of mine
3. Edit group_vars/mailserver
  1. Set the hostname to whatever your mail server's hostname is. Ex: mail.example.com
  2. Set the mailname to whatever domain you are serving mail for. Ex: example.com
4. Generate dkim keys. To do that, read gen_certs.sh this will be automated in future iterations
5. Put your dkim keys in your DNS records (TODO: elaboreate on this step)
6. Generate SSL keys. To do that, read gen_certs.sh this will be automated in future iterations
7. Get your SSL keys signed by a CA (unless you are using a self-signed cert) and include the signed certificate in roles/personal-mailserver/files/private/tls/cert.pem
8. (optional) Set up SPF (left as exercise to the reader)
9. (optional) Make sure rDNS is set up correctly
10. Make sure you can ssh into your server without a password (your public key must be in the ~/.ssh/authorized_keys file)
10. Run ansible-playbook main.yml to deploy
11. For now, the username is hardcoded as "me", so go in and set the password for "me"
12. Make final changes to DNS: change MX records, etc. See example_zonefile for inspiration.
13. Debug any issues, tear your hair out and/or open an issue on this github project for help
