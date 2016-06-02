# About this docker image

This image was made for build sphinx documents. Target CI-software is gitlab-ci.

Some useful sphinxcontrib packages and theme are included.

[![](https://imagelayers.io/badge/tsgkadot/sphinx-plantuml:latest.svg)](https://imagelayers.io/?images=tsgkadot/sphinx-plantuml:latest 'Get your own badge on imagelayers.io')

[日本語はこちら](https://github.com/tsgkdt/sphinx-plantuml/blob/master/README_ja.md)

If you need latex/pdf output, use tsgkadot/sphinx-plantuml:tex image.

## base image

python:3.5.1 (official image)

## additional installed package

- sphinx 1.4.2
- sphinxcontrib-blockdiag 1.5.5
- sphinxcontrib-actdiag 0.8.5
- sphinxcontrib-nwdiag 0.9.5
- sphinxcontrib-seqdiag 0.8.5
- sphinxcontrib-plantuml 0.8.1

## installed software (for using plantuml)

- java
- graphviz

## installed theme

Nice bootstrap theme is included.

- sphinxbootstrap4theme 0.3.0

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
  