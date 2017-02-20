#!/bin/sh
echo 'Setting password to '${password}
echo 'vsftpd:'${password} | chpasswd && vsftpd