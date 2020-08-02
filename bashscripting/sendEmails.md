##### Send emails with a bash script
First install sendEmail and some additional libraries: `sudo apt-get install sendEmail libio-socket-ssl--perl libnet-ssleay-perl`
Then type: `sendEmail -f [emailaddress] -t [emailaddress] -u This is a test email -m "Testing 123" -s smtp.googlemail.com:587 -xu [emailaddress] -xp [password] -o tls=yes`
This is a super long command so lets script it instead.

`#!/bin/bash
  2 
  3 # This script will fill out and send an email
  4 
  5 SMTPFROM=emailaddress
  6 SMTPTO=emailaddress
  7 SMTPSERVER=smtp.google.com:587
  8 SMTPUSER=emailusername
  9 SMTPPASS=password
 10 MESSAGEBODY="somestuffhere"
 11 SUBJECT="This is a test"
 12 
 13 sendEmail -f $SMTPFROM -t $SMTPTO -u $SUBJECT -m $MESSAGEBODY -s $SMTPSERVER -xu $SMTP    USER -xp $SMTPPASS`
 
 `chmod +x {scriptname}`
 
 
