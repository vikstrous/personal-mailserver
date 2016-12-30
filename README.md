personal-mailserver
===================

### UPDATE: DEPRECATED; See https://github.com/vikstrous/mailserver

A config for a single user debian mail server that uses dovecot and postfix

This config assumes that you are using ansible. You can use it as inspiration if you are not, but it should be much easier to use if you are.

Features
--------

- Uses ansible to deploy
- Dovecot for imap(s)
- Postfix for smtp(s)
- Spamassassin for spam protection
- dovecot-sieve for sorting email into folders
- openntpd for keeping time up to date
- sasl for ssl/tls
- I think it disallows non-encrypted imap connections, but I haven't tested
- Catch-all email address, all email for your domain is sent to user "me"
- Automatic updates

Limitations
-----------

- Works on Debian only
- I haven't thought too hard about older or newer versions of any of the software
- Overwrites your config files, but I'm not sure if there's much to be done about that one
- Handles only one domain and one user

Setup
-----

- If you don't already have an ansible project, look at the example directory and follow the instructions in the README.md there.
- If you already have an ansible project set up, clone git@github.com:vikstrous/personal-mailserver.git into your roles directory and then look at the README.md in the example directory.

Once you are done I recommend testing it with http://www.mail-tester.com/ and http://mxtoolbox.com/diagnostic.aspx

Connecting to your server
-------------------------

You should be able to use any imaps/smtps client to send and receive mail.
