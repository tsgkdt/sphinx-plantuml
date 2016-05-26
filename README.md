# About this docker image

This image was made for build sphinx documents. Target CI-software is gitlab-ci.

Some useful sphinxcontrib packages and theme are included.

## base image

python:3.5.1 (official image)

## additional installed package

- sphinx
- sphinxcontrib-blockdiag
- sphinxcontrib-actdiag
- sphinxcontrib-nwdiag
- sphinxcontrib-seqdiag
- sphinxcontrib-plantuml

## installed software (for using plantuml)

- java
- graphviz

## installed theme

Nice bootstrap theme is included.

- sphinxbootstrap4theme

see [original document](https://github.com/myyasuda/sphinxbootstrap4theme)

# plantuml location

- /usr/local/plantuml/plantuml.jar

```sh
echo $PLANTUML

```


# sample project and build output image

- sample sphinx project and gitlab-ci.yml

  see [gitlab repogitory](https://gitlab.com/tsgkdt/sphinx-plantuml/)
  
- output image

  see [gitlab pages](https://tsgkdt.gitlab.io/sphinx-plantuml/)
  