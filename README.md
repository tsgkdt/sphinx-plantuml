# About this docker image

This image was made for build sphinx documents. Target CI-software is gitlab-ci.

Some useful sphinxcontrib packages and theme are included.

If you need latex/pdf output, use tsgkadot/sphinx-plantuml:tex image.(Size is too big!)

[日本語はこちら](https://github.com/tsgkdt/sphinx-plantuml/blob/master/README_ja.md)


## Simple Usage

```sh
docker run --rm -v `pwd`:/tmp/sphinx --name sphinx sphinx-plantuml sphinx-build -b html /tmp/sphinx/source /tmp/sphinx/build
```

## Gitlab-CI usage.

Sample .gitlab.yml is bellow.

```yaml
image: tsgkadot/sphinx-plantuml:latest

stages:
  - build

pages:
  stage: build
  script:
    - pip install -r requirements.txt -U
    - sphinx-build -b html ./source public
  artifacts:
    expire_in: 1 week
    paths:
      - public
  tags:
    - docker
```

- [.gitlab-ci.yml](https://gitlab.com/tsgkdt/sphinx-plantuml/blob/master/.gitlab-ci.yml)
- [build result => gitlab pages](https://tsgkdt.gitlab.io/sphinx-plantuml/) 
  

## base image

- Tag: alpine  python:3.5.2-alpine(Official image)

## additional installed package

- sphinx 1.5.0
- sphinxcontrib-blockdiag 1.5.5
- sphinxcontrib-actdiag 0.8.5
- sphinxcontrib-nwdiag 0.9.5
- sphinxcontrib-seqdiag 0.8.5
- sphinxcontrib-plantuml 0.8.1

## installed software

- java (for plantuml)
- graphviz (for plantuml)
- platnuml (Version 8050)
- git (#1)

## installed theme

Nice bootstrap theme is included.

- sphinxbootstrap4theme 0.5.0

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


