FROM python:3.8-slim
ARG DEV_MODE=0
ENV SOME_ENV='secret' \
    OTHER_ENV='other_secret'
RUN apt-get update -y && apt-get install -y vim gcc curl
COPY . /
WORKDIR /
# VOLUME /my_persist_data # this creates new volume each running instance but namedVolume points the same on each running instance
CMD ["/bin/bash"]
# docker image build -t "imagetag" .
# docker images
# docker run --rm -it --name containerName -v my_persist_vol:/insideLinuxpath basicdocker bash -c "tail -f"
