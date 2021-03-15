FROM alpine:3.12.4

#install workflow operating systsem dependencies
RUN apk update && apk add openjdk8-jre bash
# perl perl-dev perl-utils db-dev expat-dev

#install workflow management system
RUN wget -qO- https://get.nextflow.io | bash && mv nextflow /bin

COPY test.nf test.nf
