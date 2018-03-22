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

- Tag: alpine  python:3.6-alpine(Official image)

## additional installed package

- sphinx 1.7.1
- sphinxcontrib-blockdiag 1.5.5
- sphinxcontrib-actdiag 0.8.5
- sphinxcontrib-nwdiag 0.9.5
- sphinxcontrib-seqdiag 0.8.5
- sphinxcontrib-plantuml 0.0.10

## installed software

- java (for plantuml)
- graphviz (for plantuml)
- platnuml (Version 1.2018.1)
- git (#1)

## installed theme

Nice bootstrap / Material Design themes are included.

| theme | version | remarks |
|:------|---------|----------:|
| [sphinxbootstrap4theme](https://github.com/myyasuda/sphinxbootstrap4theme) | 0.5.0 | Bootstrap theme |
| [sphinx_materialdesign_theme](https://github.com/myyasuda/sphinx_materialdesign_theme) | 0.1.10 | material design theme |

These theme's demo sites are below.

- [Bootstrap Theme Demo Site](https://myyasuda.github.io/sphinxbootstrap4theme/)
- [Material Design Theme Demo Site](https://myyasuda.github.io/sphinx_materialdesign_theme/)

# plantuml location

- /usr/local/plantuml/plantuml.jar

```sh
echo $PLANTUML

```

## Installed Fonts

- [TakaoFonts_00303.01](https://launchpad.net/takao-fonts)

Installe location is below.

/usr/share/fonts/TakaoFonts/


