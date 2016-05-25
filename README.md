# sphinx docker image for gitlab-ci

gitlab-ciからSphinxでビルドする用につくったDockerイメージです。

baseのイメージは、python:3.5.1を利用し、sphinxやplatnuml、blockdiagを追加しています。

# installed package

導入済みのもの

- sphinx
- sphinxcontrib-blockdiag
- sphinxcontrib-actdiag
- sphinxcontrib-nwdiag
- sphinxcontrib-seqdiag
- sphinxcontrib-plantuml

plantumlを動作させるのに必要なもの

- java
- graphviz

# installed theme

- sphinxbootstrap4theme


# plantuml location

- /usr/local/plantuml/plantuml.jar

環境変数 $PLANTUMLとしてjarの場所を指定してあります。
```sh
echo $PLANTUML

```

# setting for conf.py

```py
# example
extensions = [
  'sphinxcontrib.plantuml',
  'sphinxcontrib.blockdiag'
]

plantjar = os.getenv('PLANTUML')
plantuml = 'java -jar %s' % plantjar
```
