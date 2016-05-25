FROM python:3.5.1

MAINTAINER tsgkdt <tsgkadot@gmail.com>

RUN apt-get update && apt-get install -y \
    default-jre \
    graphviz

RUN java -version


 
#PlantUML
ENV PLANTUML_DIR /usr/local/plantuml
ENV PLANTUML_JAR plantuml.jar
ENV PLANTUML $PLANTUML_DIR/$PLANTUML_JAR

RUN mkdir $PLANTUML_DIR
RUN wget "https://sourceforge.net/projects/plantuml/files/plantuml.jar"
RUN cp plantuml.jar $PLANTUML_DIR

RUN pip install --upgrade pip

#Install Sphinx with Nice Theme&Extention
RUN pip install -U \
    sphinx \
    sphinxbootstrap4theme \
    sphinxcontrib-blockdiag \
    sphinxcontrib-actdiag \
    sphinxcontrib-nwdiag \
    sphinxcontrib-seqdiag \
    sphinxcontrib-plantuml


CMD ["python3"]
