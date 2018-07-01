FROM scratch
MAINTAINER jspc

ADD dumbcheck /dumbcheck

ENTRYPOINT ["/dumbcheck"]
