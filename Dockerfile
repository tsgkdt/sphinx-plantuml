#For example
#docker run --rm -v `pwd`:/tmp/sphinx --name sphinx sphinx-plantuml:alpine sphinx-build -b html /tmp/sphinx/source /tmp/sphinx/build

FROM python:3.5.1-alpine

MAINTAINER tsgkdt <tsgkadot@gmail.com>

RUN apk --no-cache add openjdk7-jre graphviz jpeg-dev zlib-dev ttf-dejavu && \
    apk --no-cache --virtual=dependencies add build-base python-dev py-pip wget

ENV LIBRARY_PATH=/lib:/usr/lib
#PlantUML
ENV PLANTUML_DIR /usr/local/plantuml
ENV PLANTUML_JAR plantuml.jar
ENV PLANTUML $PLANTUML_DIR/$PLANTUML_JAR

RUN mkdir $PLANTUML_DIR && \
    wget "https://sourceforge.net/projects/plantuml/files/plantuml.jar" --no-check-certificate && \
    mv plantuml.jar $PLANTUML_DIR && \
    pip install --upgrade pip && \
    #Install Sphinx with Nice Theme&Extention
    pip install -U \
    sphinx \
    sphinxbootstrap4theme \
    sphinxcontrib-blockdiag \
    sphinxcontrib-actdiag \
    sphinxcontrib-nwdiag \
    sphinxcontrib-seqdiag \
    sphinxcontrib-plantuml && \
    apk del dependencies

CMD ["python3"]
