# dummy image. will be overwritten anyway.
FROM debian:latest

ADD run.sh shift.sh /usr/bin/
RUN shift.sh

USER 12345678

ENTRYPOINT [ "run.sh" ]

LABEL customized.for=openshift
