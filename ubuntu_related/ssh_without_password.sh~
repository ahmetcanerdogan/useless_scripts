#!/bin/bash

#This files creates and uploads ssh keys to enable automatic login from this computer to the host. It implements the method in ``http://www.linuxproblem.org/art_9.html''. 

#Use: 
# $ ./ssh_without_password exp 10.1.1.7   
#
# Here-->exp is the user, 10.1.1.7 is the local IP]


remoteUSER="$1"
remoteIP="$2"

ssh-keygen -t rsa

echo "Ssh keys are being written to :" $remoteUSER@$remoteIP
ssh $remoteUSER@$remoteIP mkdir -p .ssh

cat ~/.ssh/id_rsa.pub | ssh $remoteUSER@$remoteIP 'cat >> .ssh/authorized_keys'
