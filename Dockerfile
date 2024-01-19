FROM python:3.10
RUN  apt-get -yq update && \
     apt-get -yqq install openssh-client

RUN mkdir -p ~/.ssh && \
    chmod 700 ~/.ssh && \
    touch ~/.ssh/known_hosts && \
    chmod 600 ~/.ssh/known_hosts && \
    ssh-keyscan onboarding.neustar.biz >> ~/.ssh/known_hosts