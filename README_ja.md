# このDockerイメージについて

gitlab-ciでSphinxのドキュメントをビルドするためのtex入りイメージです。

blockdiagやplantuml、有用なテーマを同梱しています。

latexやPDF出力を行うために、texも同梱しています。

毎回、gitlab-ci.ymlでpip instalやapt-get installを繰り返せば、このイメージを利用せずとも同じことが可能ですが、
時間効率のために、必要なパッケージを含めたDockerイメージとしてます。

sphinxのソースファイルを書くことに専念するために、ビルド環境についてはオールインワンにした、というところです。


## base image

python:3.5.1 (公式イメージ)

## 導入済みパッケージ

- sphinx 1.4.2
- sphinxcontrib-blockdiag 1.5.5
- sphinxcontrib-actdiag 0.8.5
- sphinxcontrib-nwdiag 0.9.5
- sphinxcontrib-seqdiag 0.8.5
- sphinxcontrib-plantuml 0.8.1

## 導入済みソフトウェア

- java
- graphviz
- texlive

plantumlでは、javaとgraphvizが必要です。

## 導入済みテーマ

見た目がナウいbootstrapのテーマを入れています。ご利用ください。

- sphinxbootstrap4theme 0.3.0

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
  