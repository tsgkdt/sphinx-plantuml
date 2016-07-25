# About this docker image

This image was made for build sphinx documents. Target CI-software is gitlab-ci.

Some useful sphinxcontrib packages and theme are included.

And texlive is included. So This image is so big!!!!!!!!

[日本語はこちら](https://github.com/tsgkdt/sphinx-plantuml/blob/tex/README_ja.md)

# usage

## for gitlab-ci

```yaml
sphinx-build:
  before_script:
    - pip install -r requirements.txt -U
  stage: build
  script:
    - sphinx-build -b latex -c ./config_dir ./source_dir ./build_dir
    - cd ./_build
    - make all-pdf-ja
  tags:
    - docker
```
 
## base image

python:3.5.2 (official image)

## additional installed package

- sphinx 1.4.5
- sphinxcontrib-blockdiag 1.5.5
- sphinxcontrib-actdiag 0.8.5
- sphinxcontrib-nwdiag 0.9.5
- sphinxcontrib-seqdiag 0.8.5
- sphinxcontrib-plantuml 0.8.1

## installed software

- java (for plantuml)
- graphviz (for plantuml)
- texlive (for output latex/pdf)

## installed theme

Nice bootstrap theme is included.

- sphinxbootstrap4theme 0.4.3

see [original document](https://github.com/myyasuda/sphinxbootstrap4theme)

# plantuml location

- /usr/local/plantuml/plantuml.jar

```sh
echo $PLANTUML

```


# sample project and build output image

- sample sphinx project and gitlab-ci.yml

  see [gitlab repogitory](https://gitlab.com/tsgkdt/sphinx-plantuml/)
  
