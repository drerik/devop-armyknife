FROM python:3.5-onbuild

RUN apt-get update && apt-get install -y sqlite3 git curl wget && apt-get clean

ENV DOCKER_VERSION=1.8.3

RUN curl -L https://get.docker.com/builds/Linux/x86_64/docker-1.8.3.tgz | tar -xz -C / && chmod +x /usr/local/bin/docker
ENV PATH="/usr/local/bin/docker:${PATH}"

CMD ["python", "./main.py"]
