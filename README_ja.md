# このDockerイメージについて

gitlab-ciでSphinxのドキュメントをビルドするためのイメージです。

blockdiagやplantuml、有用なテーマを同梱しています。

[![](https://imagelayers.io/badge/tsgkadot/sphinx-plantuml:latest.svg)](https://imagelayers.io/?images=tsgkadot/sphinx-plantuml:latest 'Get your own badge on imagelayers.io')


毎回、gitlab-ci.ymlでpip instalやapt-get installを繰り返せば、このイメージを利用せずとも同じことが可能ですが、
時間効率のために、必要なパッケージを含めたDockerイメージとしてます。

sphinxのソースファイルを書くことに専念するために、ビルド環境についてはオールインワンにした、というところです。

## base image

python:3.5.1 (公式イメージ)

## 導入済みパッケージ

- sphinx
- sphinxcontrib-blockdiag
- sphinxcontrib-actdiag
- sphinxcontrib-nwdiag
- sphinxcontrib-seqdiag
- sphinxcontrib-plantuml

## 導入済みソフトウェア (plantumlに必要)

- java
- graphviz

plantumlでは、javaとgraphvizが必要です。

## 導入済みテーマ

見た目がナウいbootstrapのテーマを入れています。ご利用ください。

- sphinxbootstrap4theme

参考 [original document](https://github.com/myyasuda/sphinxbootstrap4theme)

# plantuml location

plantumlのjarファイルは以下の場所にあります。conf.pyで指定するときの参考にしてください。

- /usr/local/plantuml/plantuml.jar

環境変素 $PLANTUML でjarファイルのパスを保持しています。

```sh
echo $PLANTUML

```

# 参考情報

gitlab-ci.ymlやconf.pyの記載内容の参考にしてください。gitlab.ioでは、ビルドされた結果を表示しています。

- サンプルSphinxプロジェクトとgitlab-ciの例

  see [gitlab repogitory](https://gitlab.com/tsgkdt/sphinx-plantuml/)
  
- 上記でビルド結果された内容

  see [gitlab pages](https://tsgkdt.gitlab.io/sphinx-plantuml/)
  