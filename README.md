# About this docker image

This image was made for build sphinx documents. Target CI-software is gitlab-ci.

Some useful sphinxcontrib packages and theme are included.

If you need latex/pdf output, use tsgkadot/sphinx-plantuml:tex image.(Size is too big!)

[日本語はこちら](https://github.com/tsgkdt/sphinx-plantuml/blob/master/README_ja.md)


## Simple Usage

```sh
docker run --rm -v `pwd`:/tmp/sphinx --name sphinx sphinx-plantuml:alpine sphinx-build -b html /tmp/sphinx/source /tmp/sphinx/build
```


## base image

- Tag: alpine  python:3.5.1-alpine(Official image)

## additional installed package

- sphinx 1.4.4
- sphinxcontrib-blockdiag 1.5.5
- sphinxcontrib-actdiag 0.8.5
- sphinxcontrib-nwdiag 0.9.5
- sphinxcontrib-seqdiag 0.8.5
- sphinxcontrib-plantuml 0.8.1

## installed software

- java (for plantuml)
- graphviz (for plantuml)

## installed theme

Nice bootstrap theme is included.

- sphinxbootstrap4theme 0.4.3

see [original document](https://github.com/myyasuda/sphinxbootstrap4theme)

# plantuml location

- /usr/local/plantuml/plantuml.jar

```sh
echo $PLANTUML

```

## Installed Fonts

- [TakaoFonts_00303.01](https://launchpad.net/takao-fonts)

Installe location is below.

/usr/share/fonts/TakaoFonts/


# sample project and build output image

- sample sphinx project and gitlab-ci.yml

  see [gitlab repogitory](https://gitlab.com/tsgkdt/sphinx-plantuml/)
  
