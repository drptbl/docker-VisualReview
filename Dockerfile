FROM alpine:3.4

MAINTAINER Jakub Mucha

# retrieve required packages
RUN apk add --update \
    wget \
    unzip \
    openjdk8 \
	ca-certificates

# variables
ENV dir /usr/vr/

# create and use dir
RUN mkdir ${dir}
ENV PATH ${dir}:$PATH
WORKDIR ${dir}
RUN cd ${dir}

# retrieve file from server
RUN wget https://github.com/xebia/VisualReview/releases/download/0.1.4/visualreview-0.1.4.zip
RUN unzip visualreview-0.1.4.zip
RUN rm visualreview-0.1.4.zip

EXPOSE 7000

# GOGO Visual Review
CMD java -jar visualreview-0.1.4-standalone.jar
