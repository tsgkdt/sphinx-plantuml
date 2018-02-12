#For example
#docker run --rm -v `pwd`:/tmp/sphinx --name sphinx sphinx-plantuml sphinx-build -b html /tmp/sphinx/source /tmp/sphinx/build

FROM python:3.6-alpine

LABEL  maintainer tsgkdt <tsgkadot@gmail.com>

COPY requirements.txt /tmp

RUN apk --no-cache add openjdk8-jre graphviz jpeg-dev zlib-dev ttf-dejavu freetype-dev git && \
    apk --no-cache --virtual=dependencies add build-base python-dev py-pip wget

ENV LIBRARY_PATH=/lib:/usr/lib
#PlantUML
ENV PLANTUML_DIR /usr/local/plantuml
ENV PLANTUML_JAR plantuml.jar
ENV PLANTUML $PLANTUML_DIR/$PLANTUML_JAR

RUN \
    #PlantUML
    mkdir $PLANTUML_DIR && \
    wget "https://sourceforge.net/projects/plantuml/files/plantuml.jar" --no-check-certificate && \
    mv plantuml.jar $PLANTUML_DIR && \
    #TakaoFont for Japanese
    wget "https://launchpad.net/takao-fonts/trunk/15.03/+download/TakaoFonts_00303.01.tar.xz" && \
    tar xvf TakaoFonts_00303.01.tar.xz -C /usr/share/fonts/ && \
    rm -f TakaoFonts_00303.01.tar.xz && \
    ln -s /usr/share/fonts/TakaoFonts_00303.01 /usr/share/fonts/TakaoFonts && \
    #Upgrade pip
    pip install --upgrade pip && \
    #Install Sphinx with Nice Theme&Extention
    pip install -U /tmp/requirements.txt && \
    # for Build Infomation
    pip freeze && \ 
    apk del dependencies

CMD ["python3"]
