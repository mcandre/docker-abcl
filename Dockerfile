FROM mcandre/docker-java:8
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV CLASSPATH /abcl.jar
ADD https://beta.quicklisp.org/quicklisp.lisp /quicklisp.lisp
ADD https://common-lisp.net/project/armedbear/releases/current/abcl.jar /abcl.jar
COPY abcl /usr/bin/abcl
RUN abcl --load /quicklisp.lisp --eval "(quicklisp-quickstart:install)"
COPY .abcl /root/.abcl
