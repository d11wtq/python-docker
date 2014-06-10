# Docker container for running Python Apps

FROM       d11wtq/ubuntu
MAINTAINER Chris Corbyn <chris@w3style.co.uk>

ADD https://github.com/yyuu/pyenv/archive/v0.4.0-20140602.tar.gz /tmp/

RUN cd /tmp;                                                  \
    sudo chown default: *.tar.gz;                             \
    tar xvzf *.tar.gz; rm -f *.tar.gz;                        \
    cd pyenv*;                                                \
    ./plugins/python-build/bin/python-build 2.7.7 /usr/local; \
    cd; rm -rf /tmp/pyenv*
