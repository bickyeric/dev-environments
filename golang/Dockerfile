FROM docker:20.10.18-cli AS docker-tool

FROM golang:1.19.1

COPY --from=docker-tool /usr/local/bin/docker /usr/local/bin/docker
COPY --from=docker-tool /usr/libexec/docker/cli-plugins /usr/libexec/docker/cli-plugins

RUN useradd -s /bin/bash -m vscode \
  && groupadd docker \
  && usermod -aG docker vscode

USER vscode
