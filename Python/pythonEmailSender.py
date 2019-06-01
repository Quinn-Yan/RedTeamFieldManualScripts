#!/usr/bin/python

# Sendmail must be installed

import smtplib, string, os, time

os.system("/etc/init.d/sendmail start")
time.sleep(4)

HOST="localhost"
SUBJECT = "Email from spoofed sender"
TO = "target@you.com"
FROM = "spoof@spoof.com"
TEXT = "Message Body"
BODY = string.join((
    "From: %s" % FROM,
    "To: %s" % TO,
    "Subject: %s" % SUBJECT,
    "",
    TEXT
),"\r\n")
server = smtplib.SMTP(HOST)
server.sendmail(FROM, [TO], BODY)
server.quit()

time.sleep(4)
os.system("/etc/init.d/sendmail stop")