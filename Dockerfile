FROM ubuntu

LABEL maintainer="Sainath Shetty <sai@.me>"

USER root

COPY ./entrypoint.bash /

RUN apt -y update
RUN apt -y install curl bash dos2unix
RUN chmod 755 /entrypoint.bash

USER nobody
ENTRYPOINT ["./entrypoint.bash"]
