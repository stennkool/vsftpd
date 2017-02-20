FROM ubuntu:16.10 
MAINTAINER Stenn Kool <stennkool@gmail.com>

ENV password changeme

RUN apt-get update && apt-get -y install vsftpd && apt-get -y autoremove && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash vsftpd

COPY vsftpd.conf /etc/vsftpd.conf

RUN /bin/mkdir /var/run/vsftpd

RUN /bin/mkdir /var/run/vsftpd/empty

COPY run.sh /run.sh

RUN chmod +x /run.sh

CMD /run.sh