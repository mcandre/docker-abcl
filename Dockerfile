FROM mcandre/docker-java:8
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV CLASSPATH /abcl.jar
COPY abcl /usr/bin/abcl
RUN apt-get update && \
    apt-get install -y wget && \
    wget -O /quicklisp.lisp https://beta.quicklisp.org/quicklisp.lisp && \
    wget -O /abcl.jar https://common-lisp.net/project/armedbear/releases/current/abcl.jar && \
    abcl --load /quicklisp.lisp --eval "(quicklisp-quickstart:install)"
COPY .abcl /root/.abcl
