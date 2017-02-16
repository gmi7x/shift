# image sample. will be overwritten anyway.
FROM debian:latest

ADD *.sh /usr/bin/
RUN shift.sh

USER 12345678

ENTRYPOINT [ "sudo.sh" ]

LABEL customized.for=openshift
