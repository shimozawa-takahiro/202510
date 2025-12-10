#import "libs/jasnaoe-conf/jasnaoe-conf_lib.typ": jasnaoe-conf
#show: jasnaoe-conf.with()

#import "libs/jasnaoe-conf/direct_bib_lib.typ": bibliography-list, bib-item, use-bib-item-ref
#show: use-bib-item-ref.with(numbering: "1)") // 番号の書式を指定

//----------------------------------------
//以下、申込に必要な最低限の情報です。
//本文には反映されませんが、共著者間でのレビュー時に必要かと思います。
/*
Paper Title(English): Development of a time-expanded GMCNF-based integrated supply chain optimization method for the FOWT deployment process
著者1(名前(日本語)、名前(英語), 所属(日本語), 会員種別): 下澤貴弘, Takahiro Shimozawa, 横浜国立大学, 先進実践学環

要旨(日本語300字程度、英語150words程度):
このテンプレートは、2024年秋季講演会以降の日本船舶海洋工学会の講演会論文作成を想定して、Typstで作成しています。
もちろん♡非公式♡のテンプレートですので、ご使用の際は自己責任でお願いします。
*/
//----------------------------------------

// 1章 緒言
= 緒言 <1緒言>
地球温暖化の進行により、世界全体で再生可能エネルギーの導入が進んでいる。
特に洋上風力発電は世界全体で導入が進んでおり、2023年現在では世界全体での設備容量が75.2GWとなった #super[@1-6]。
さらに2030年には約494GW、2050年には約2465GWの導入が見込まれている #super[@1-2]。
各年の導入量実績は2021年には21GW、2022年には9GW、2023年には13GW、今後の予測は2030年頃には年間約50GWとより大量の風車が導入される予定である。 // 自然エネルギー財団、 洋上風力発電の動向世界と日本における現状（第5版）
その需要に応えるために必要なことが洋上風車のサプライチェーンの構築である。
洋上風車の導入における部材や関連機器を輸送、保管する際にかかるロジスティクス費用が発電コストの18%を占めるとされており、その削減が大量導入の実現と他発電に対する競争力確保に直結するからである #super[@1-3]。
このようなことから洋上風力分野ではサプライチェーンに関する研究が行われている。
Gabrielaらは、風力発電プロジェクトにおけるリスク因子とその原因となる輸送・設備投資といった活動内容を文献から抽出し、階層分析法を用いて各リスク因子とプロジェクト全体におけるボトルネックとなる活動を求めた #super[@1-4]。
Thomasらは洋上風力発電のサプライチェーンを細分化、洋上風力発電プロジェクトの関係者へのインタビューを行うことで各段階におけるボトルネックを特定した #super[@1-5]。
Tenzinらは風車上部部材の輸送〜設置戦略に着目、大型設置船の単独運用とフィーダ船と大型設置船の連携運用を比較するツールを作成して既存プロジェクトと将来のプロジェクトに適用しコストの比較を行った #super[@1-14]。
これらは主に着床式に焦点を当てた研究であるが、本研究では浮体式の洋上風車に焦点を当てる。
浮体式洋上風力発電は、設置可能な海域が広い点に大きな特長がある。
風力資源はその約80パーセントが水深60メートルより深い海域に分布しており、着床式洋上風車はおおむね水深60mを超えると経済性が低下するのに対し、浮体式は深海域にも対応可能である #super[@1-8]。
そのため、利用可能な海域が大幅に拡大することから大規模な洋上風力導入を進めるうえで浮体式の活用は不可欠な選択肢となる。
一方で浮体式洋上風力には着床式に比べて産業基盤が未成熟であり、発電単価も高いという課題がある。
2020年時点での累計設置量は73MWにとどまっている #super[@1-9]。
また、2017年に稼働を開始した世界初の商用浮体式洋上風力発電所であるHywind Scotlandでは発電単価が180ユーロとされており、これは着床式洋上風力発電の約80ドルと比べて約2.5倍の水準である #super[@1-10] #super[@1-11]。
こうした導入量の少なさとコストの高さを克服するために、浮体式においても戦略的なサプライチェーンの構築が不可欠である。
浮体式でもサプライチェーンに関する研究が行われている。
その中でも、離散事象シミュレーションを用いて風車導入の一部段階における細かなモデリングを行い、それぞれにかかる時間やコストに関する分析を行うものが多く存在する。
Smithらは浮体基礎の製造段階に着目し、複数港湾の活用方法を検討するために浮体基礎の組み立てに関する作業工程をモデル化し、作業能力・季節や天候・場所の違いが組み立ての所要時間やプロジェクト工期に与える影響を調査した #super[@1-17]。
Fionaらは着床式と浮体式双方の設置段階におけるコストを概算することを目的とし、港湾から設置海域への輸送と風車設置段階における導入期間・コストを算出するモデルを構築しその妥当性を検証した。
さらに将来運転が開始されるケルト海のプロジェクトにモデルを適用し設置コストを算出、さらに感度解析を行いコスト低下の可能性を示した #super[@1-18]。
Esperanzaらは風車設置段階の工期とダウンタイムの推定を行うことを目的とし、気象時系列データを用い時間領域のシミュレーションモデルを構築した。このモデルを用いて港湾位置・距離・気象条件・船舶構成による工期とリスク影響を分析することし、天候や施工能力による待ち時間の割合が非常に大きいことを示した #super[@1-19]。
一方、浮体式洋上風力発電事業は未成熟であることからサプライチェーン検討の際はより広い範囲を網羅することが重要であり、それに資する研究が行われている。
Mitsuyukiらはネットワークモデルを用いて部材製作・輸送・風車組立・設置に至る一連のプロセスを含む浮体式洋上風車のサプライチェーンを表現し、最適化計算によって浮体式洋上風車の供給経路を求めるモデルベースでのサプライチェーン設計手法を提案した #super[@1-15]。
この研究はサプライチェーンに関する広い範囲を網羅しているが、サプライチェーン構築の際には部材製作・輸送・風車組立・設置に加えて部材の保管も同時に考慮することが重要である。
保管も考慮するべき理由は、風車の設置時期が天候によって左右される一方で部材の製造・輸入は一年中行われることから部材を一時保管することが不可欠だからである。
そこで本研究ではネットワーク最適化の一種である一般化多品種ネットワークフローモデル #super[@1-16] を用いて時系列を考慮した浮体式洋上風車のサプライチェーンの最適化手法を提案する。
ネットワーク最適化モデルを用いることで多数の施設・工程・保管を含む大規模なサプライチェーンを過不足なく表現できるという利点がある。
提案手法の新規性は、部材生産から風車設置までの一連の浮体式洋上風車供給プロセスに対し、これを時間軸上に拡張した点にある。
具体的には、部材の組み立てや設置に伴う状態変化および位置の変化に加えて、その時間的変化も同時に表現可能とすることで、より広範囲かつ現実的なサプライチェーンの表現を可能としている。

// 2章 提案手法
= 提案手法 <2提案手法>
// 2.1 概要
== 概要 <2.1概要>
@fig:figure.1 に本研究で提案する浮体式洋上風車のサプライチェーン設計モデルの概要を示す。
提案する手法では浮体基礎を主な対象とし、浮体生産における鋼材の加工から浮体基礎の大組工程、さらに風車組立、設置といった浮体式洋上風車の生産プロセス、船舶による輸送プロセス、浮体の仮置きを含む保管プロセスを一般化多品種ネットワークフローモデルであるGMCNFモデル #super[@1-16]を用い表現する。
入力値としては、ノードとリンクに複数のパラメータを設定する。
造船所や基地港湾、設置海域といった風車に関係する施設のうちの特定の時刻をノードとして設定、それらに部材の需要・供給数を設定する。
次に、部材がとり得る可能性がある生産・輸送・保管経路をリンクとして設定、各リンクにコストとキャパシティを設定する。
そして、入力したパラメータからコスト最小化を目的として整数線形計画問題(ILP)を定式化し解くことで浮体式洋上風車の最適なサプライチェーンを得る。

// 図1、提案手法の概要
#figure(
  image("figs/Figure_1.png", width: 100%),
  placement: none,
  caption: "Overview of the Proposed Method",
  supplement: "Fig.",
  kind: "image", // figureの種類
) <fig:figure.1>

// 2.2 時系列のモデル化手法
== 時系列のモデル化手法 <2.2時系列のモデル化手法>
この節では、本提案手法の核である時系列のモデル化手法について説明する。
はじめに単一時間のネットワークについて @fig:figure.2 を用いて説明する。
各地に存在する風車関連施設をノードとして設定する。
@fig:figure.2 では $i$ と $j$ がノードに相当する。
次に、ノード同士を結ぶリンクを設定する。
@fig:figure.2 ではノード$i$ と $j$ を結ぶ $i j$ とノード $j$ 同士を結ぶ $j j$ がリンクに相当する。
ノードとリンクにはサプライチェーンにおける使用可能性のあるものを全て設定する。
この時点でリンクには2種類が存在し、輸送リンクと生産リンクとしている。
輸送リンクは各地に存在するノードを結ぶものであり、風車や部材を輸送する際に用いられる。
生産リンクは同地点のリンクを結び、部材が組み立てられるなどの状態変化が起こる際に用いられる。
これらの経路を経由して、部材から風車まで製造・輸送されるプロセスを表現する。

// 図2、輸送・生産リンクのみのネットワークモデル
#figure(
  image("figs/Figure_2.png", width: 100%),
  placement: none,
  caption: "Single Time modeling",
  supplement: "Fig.",
  kind: "image", // figureの種類
) <fig:figure.2>

次に部材の保管を考慮するために @fig:figure.2 に時系列の概念を導入する。
風車導入期間と複数の時間ステップを設定し、その数だけ単一時間のネットワークを用意する。
時間ステップを導入することで、時期により生産や輸送の能力が変化する中で各時刻での最適な生産・輸送量を求めることが可能となる。
この時、一地点のノードは時間ステップ分だけ存在するが、次の時間ステップへ保管リンクを設定する。
時系列も含めたネットワークモデルを @fig:figure.3 に示す。
@fig:figure.3 上の添え字はアルファベットが地点、数字が時刻を表す。
例えば $i(1)$ であれば地点 $i$ の時刻 $1$ を示している。
@fig:figure.3 では単時刻を表す @fig:figure.2 が複数設定されており、輸送リンクが $i(1)j(1)$ $i(2)j(2)$ 、生産リンクが $j(1)j(1)$ $j(2)j(2)$ として存在している。
さらに、ノード $i(1)$ から $i(2)$ へ向かうリンク $i(1)i(2)$ とノード $j(1)$ から $j(2)$ へ向かうリンク $j(1)j(2)$ が保管リンクに相当する。
これによって次の時間ステップへ部材の供給が可能となる、すなわち風車や部材の保管を表現できるようになる。

// 図3、輸送・生産リンクのみのネットワークモデル
#figure(
  image("figs/Figure_3.png", width: 100%),
  placement: none,
  caption: "Time series modeling",
  supplement: "Fig.",
  kind: "image", // figureの種類
) <fig:figure.3>

3種類のリンクを設定したのち、各ノード、リンクにパラメータを設定する。
ノードには風車の設置数や部材の供給量を表す需給数 $bold(b)$ を設定する。
ノードが部材を供給する場合は正の値を、部材の需要がある場合は負の値を設定する。
リンクには2種類のパラメータと1つの変数が存在し、1つのリンクに流出・流入（プラス・マイナス）の2つの値が設定される。
パラメータのうち1つ目は $bold(c)$ であり、リンクの生産・輸送・保管にかかる単位量あたりのコストである。
2つ目は $bold(u)$ であり、リンクでの生産・輸送・保管の可能数、すなわちキャパシティである。
変数は $bold(x)$ であり、リンクにおける部材や船舶のフローを表す。これは最適化計算によって決定される。
これらパラメータを用いて定式化を行う。

// 2.3 GMCN定式化
== GMCNF定式化 <2.3GMCNF定式化>
ここからはGMCNFモデルによる定式化と最適化について説明する。
GMCNFモデルは一般化多品種ネットワークフローモデルのことであり、ノードでの追加要求、リンクでの変換、リンクでの同時実行を表現できる。
多品種とあるが、今回の研究ではノード、リンクの要素を @fig:figure.4 と設定した。

// 図4、本研究で設定された部材
#figure(
  image("figs/Figure_4.png", width: 90%),
  placement: none,
  caption: "Elements of flow",
  supplement: "Fig.",
  kind: "image", // figureの種類
) <fig:figure.4>

浮体基礎は風車の下部構造、鋼材、モジュール、ハーフボディ1、ハーフボディ3は浮体基礎を製作する際の中間製品、タワー、ブレード、ナセルは風車の上部構造の一種である。
なお船舶は風車の部材とは関係ないが、部材や風車を輸送するために用いられるとした。
要素を $bold(x)$ を用いて表現すると @eq:2-1 となる。

$
bold(x)^±
=
mat(delim: "[",
  x^(upright("steel"));
  x^(upright("module"));
  x^(upright("halfbody1"));
  x^(upright("halfbody3"));
  x^(upright("foundation"));
  x^(upright("tower"));
  x^(upright("blade"));
  x^(upright("nacelle"));
  x^(upright("FOWT"));
  x^(upright("FOWT_installed"));
  x^(upright("ship"));
)^±
$<eq:2-1>

これらパラメータ・変数に対し、@eq:2-2 〜 @eq:2-10 で定式化を行った。

// 式(2),目的関数
$ min sum_((i(t)j(t')) in upright("Link"))  // 改行
    bold(c)^(+T)_(i(t)j(t'))  bold(x)^+_(i(t)j(t')) + bold(c)^(-T)_(i(t)j(t')) bold(x)^-_(i(t)j(t'))) $<eq:2-2>

// 式(3),需給制約 A行列のやつ
$ sum_(j:(i(t)j(t)) in upright("Link")) x^+_(i(t)j(t)) - sum_(j:(j(t)i(t)) in upright("Link")) x^+_(j(t)i(t)) \ // 改行
  + x^+_(i(t)i(t+1)) - x^-_(i(t-1)i(t))
  <= b_(i(t)) #h(3em) 
  ∀ i(t) in upright("Node") $<eq:2-3>

// 式(4),リンク容量制約
$ x^±_(i(t)j(t')) <= u^±_(i(t)j(t')) $<eq:2-4>

// 式(5)〜(8),flow transformation constrants 生産プロセス制約（造船所、基地港湾、設置海域）、輸送保管
$
mat(delim: "[",
    0,   0,   0,   0,   0;
    1,   0,   0,   0,   0;
    0,   1,   0,   0,   0;
    0,   3,   0,   0,   0;
    0,   0, 1/2, 1/2,   0
)
mat(delim: "[",
  x^(upright("steel"));
  x^(upright("module"));
  x^(upright("halfbody1"));
  x^(upright("halfbody3"));
  x^(upright("foundation"))
)^+ 
=
mat(delim: "[",
  x^(upright("steel"));
  x^(upright("module"));
  x^(upright("halfbody1"));
  x^(upright("halfbody3"));
  x^(upright("foundation"))
)^- 
$<eq:2-5>

$
mat(delim: "[",
    0,   0,   0,   0,   0;
    0,   0,   0,   0,   0;
    0,   0,   0,   0,   0;
    0,   0,   0,   0,   0;
  1/4,1/12, 1/4, 1/4,   1
)
mat(delim: "[",
  x^(upright("tower"));
  x^(upright("blade"));
  x^(upright("nacelle"));
  x^(upright("foundation"));
  x^(upright("FOWT"))
)^+
=
mat(delim: "[",
  x^(upright("tower"));
  x^(upright("blade"));
  x^(upright("nacelle"));
  x^(upright("foundation"));
  x^(upright("FOWT"))
)^- 
$<eq:2-6>

$
x^upright("FOWT")^+ = x^(upright("FOWT_installed")^-)
$<eq:2-7>

$
I
bold(x)^+ = bold(x)^-
$<eq:2-8>

// 式(9)〜(10),要素間制約（浮体基礎大組の比率、風車組立の比率）
$
mat(delim: "[",
  1, -1;
  -1, 1
)
mat(delim: "[",
  x^(upright("halfbody1"));
  x^(upright("halfbody3"))
)^+
<=
mat(delim: "[",
    0;
    0
)
$<eq:2-9>

$
mat(delim: "[",
  -3,  1,  0,  0;
   0, -1,  3,  0;
   0,  0, -1,  1;
   1,  0,  0, -1,
)
mat(delim: "[",
  x^(upright("tower"));
  x^(upright("blade"));
  x^(upright("nacelle"));
  x^(upright("foundation")),
)^+
<=
mat(delim: "[",
  0;
  0;
  0;
  0,
)
$<eq:2-10>

@eq:2-2 は風車導入にかかる総コストであり、言い換えると部材や風車の輸送・生産・保管にかかるコストの和となる。
@eq:2-3 はノードでの部材の流出入に制約をかけている。そのノードから流出する生産、輸送、保管フローからそのノードへ流入する生産、輸送、保管フローを差し引いた値がそのノードに設定されている需給数 $b$ 以下となるようにする制約である。
前2項は生産・輸送リンクに関するものであり、後2項は保管リンクに関するものである。
@eq:2-4 はフローがリンクに設定したキャパシティを超えないようにする制約である。
@eq:2-5 〜 @eq:2-8 はリンクの流出入での部材・状態変化や輸送・保管を表しており、変換前後の部材を定義する行列によって $bold(x^+)$ 、$bold(x^-)$ 間の変化・またを表している。
この行列とキャパシティ $bold(u)$ を用いることによって風車関連施設の役割の違いや設備差を表現できる。
本研究では部材・風車の組立や設置といった部材の組み立て、状態変化を扱っているため部材が別の部材、状態に変化する際の生産プロセスを生産リンクで表現している。本研究では生産プロセスを @fig:figure.5 のように設定した。
矢印の元が変換前の部材、矢印の先が変換後の部材を表している。
鋼材から浮体基礎大組までを @eq:2-5 、浮体基礎と風車上部構造から風車を組み立てる変化を @eq:2-6 、風車を設置する状態変化を @eq:2-7 で表現している。
さらに @eq:2-8 を輸送・保管リンクに設定し、流出と流入で部材変化がないよう単位行列を掛け算している。
これらの制約は生産リンクのみに用いられ、さらにプロセスに応じて特定の式を適用している。

また、部材を変換する際にはそれぞれ比率が存在するため、 @eq:2-9 〜 @eq:2-10 でその比率を定めた。
@eq:2-9 は浮体基礎大組時に制約をかけており、変換前に $(upright("halfbody1"):upright("halfbody3")) = (1:3)$ の比率となるようにしている。
@eq:2-10 は風車組立時に制約をかけており、変換前に $(upright("tower"):upright("blade"):upright("nacelle"):upright("foundation")) = (1:3:1:1)$ の比率となるようにしている。

// 図5、本研究で設定された生産プロセス
#figure(
  image("figs/Figure_5.png", width: 100%),
  placement: none,
  caption: "Production process",
  supplement: "Fig.",
  kind: "image", // figureの種類
) <fig:figure.5>

// 3章 ケーススタディ
= ケーススタディ <3ケーススタディ>
本章では浮体基礎の仮置き設備の配置場所に着目した2つのケーススタディを行う。
どちらのケースも風車導入期間を11月から翌年の10月の1年間とし、1ヶ月ごとの12個の時間ステップを設定し、その期間で25期の風車を設置すると想定する。
すなわち毎月の施設の生産量・輸送量・保管のフローを最適化することでサプライチェーンを設計する。
ケース1では日本国内に仮想的に小型・中型・大型の3種類の造船所・基地港湾・設置海域を設定し、各地の造船所を用いたセミサブ型製作から基地港湾での風車組立と保管、さらに設置海域での風車設置までを対象とし最適化を行った。
なお3種類の造船所は異なるドックサイズを持ち、行えるプロセスが異なると想定している。
ケース2では仮置き設備を基地港湾の代わりに造船所と専用設備に配置する問題を解く。
ケース1とケース2での施設の役割について述べる。
今回のケースでは風車関連施設について、それぞれが行える生産プロセスを設定した。
小型造船所ではモジュール製作とハーフボディ1製作が行えるとし、中型造船所では小型造船所が持っている役割に加え、ハーフボディ3製作と洋上での浮体基礎製作が行えるとし、大型造船所では中型造船所の役割に加えドック内での浮体基礎製作が行えるとした。
また基地港湾では風車組立処理が行えるとし、風車設置海域では風車設置処理が行えるとした。
浮体基礎の仮置きは施設の種類に関係なく行うか否かを決定している。
また船舶による部材の輸送について述べる。
船舶による部材の輸送では1隻の船舶が @fig:figure.6 の比率となっている。
風車の上部構造物に関する記述がないが、今回のケースでは輸送する機会がないためである。

// 図6、船舶の積載可能量
#figure(
  image("figs/Figure_6.png", width: 100%),
  placement: none,
  caption: "Vessel loading capacity",
  supplement: "Fig.",
  kind: "image", // figureの種類
) <fig:figure.6>

== ケース1：基地港への浮体仮置き施設の設置を想定した風車導入計画の設計 <3.1ケース1:基地港への浮体仮置き施設の設置を想定した風車導入計画の設計>
ケース1で選定した造船所・基地港・設置海域と、それらを結ぶ輸送経路を考慮した生産・輸送ネットワークを @fig:figure.7 に示す。
4箇所の造船所、1箇所の基地港、1箇所の設置海域が含まれる。
造船所の種類であるが、磯子造船所は小型、津造船所は中型、有明造船所と呉造船所は大型造船所である。
実際には @fig:figure.7 が12層存在し、各々が1ヶ月の時刻を表す。
さらに同地点の次の時刻への保管リンクが存在する。

// 図7、ケース1のネットワーク
#figure(
  image("figs/Figure_7.png", width: 100%),
  placement: none,
  caption: "Overview of the network configuration (case 1)",
  supplement: "Fig.",
  kind: "image", // figureの種類
) <fig:figure.7>

ここからは各パラメータの設定について述べる。
まず需給量 $bold(b)$ の設定を @tab:table.1 に示す。
ノードごとに各部材・風車の需給量を設定しており、造船所では鋼材を用意、秋田港ではタワー、ブレード、ナセルを輸入しているとした。
記載のない部材は全て $0$ である。

// 表1、需給量b:ケース1
#figure(
  caption: figure.caption(
    position: top,
    [Supply-demand quantity $bold(b)_i(t)^upright("component")$ at nodes],),
  placement: none,
  supplement: "Table",
  kind: "table", // figureの種類
  )[
  #set text(size: 0.92em) // ← 表の文字サイズ
  #table(
    columns: 6,
    column-gutter: (auto, 1.5pt, auto),
    [Facility $i$]                                  , [component]     , [Nov.], [Dec.], [\~], [Oct.],
    [Isogo]                                         , [Steel]         , [100] , [0]  ,  [0] , [0]   , [Tsu]                                           , [Steel]         , [100] , [0]  ,  [0] , [0]   ,
    [Ariake]                                        , [Steel]         , [100] , [0]  ,  [0] , [0]   ,
    [Kure]                                          , [Steel]         , [100] , [0]  ,  [0] , [0]   ,
    table.cell(rowspan: 3, align: horizon,)[Akita]  , [Tower]         , [25]  , [0]  ,  [0] , [0]   ,
                                                      [Blade]         , [75]  , [0]  ,  [0] , [0]   ,
                                                      [Nacelle]       , [25]  , [0]  ,  [0] , [0]   ,
    [Noshiro]                                       , [FOWT_installed], [0]   , [0]  ,  [0] , [-25] ,
  )
]<tab:table.1>

次にコスト $bold(c)$ について述べる。
コストは全リンクの部材1つあたりの生産・輸送・保管に対しかかり、各月ごとに同じ値を設定する。
リンクには $±$ があるが、$bold(c^-)$ にかける。
はじめに生産リンクにかかるコストについて述べる。
これらは風車関連施設にかかるコストであり、変換後の部材にかける。
造船所での生産コストを @tab:table.2 に、基地港・設置海域での生産コストを @tab:table.3 に示す。
造船所の種類ごとに行える生産プロセスの数が異なっている。
次に、輸送リンクにかかるコストについて述べる。
輸送リンクは船舶のみコストがかかりその他部材は0である。
値の設定を @tab:table.4 に示す。
最後に、保管リンクにかかるコストについて述べる。
造船所は鋼材、浮体基礎、基地港湾では浮体基礎と上部構造物、設置海域では風車（設置済）の保管のみが可能とした。
値は @tab:table.5 のように設定した。

// 表2、ケース1の生産コスト（造船所）
#figure(
  caption: figure.caption(
    position: top,
    [Production cost $bold(c)^-_i$ of each process at shipyards],),
  placement: none,
  supplement: "Table",
  kind: "table", // figureの種類
  )[
  #set text(size: 0.92em) // ← 表の文字サイズ
  #align(left)[#text(size: 0.9em)[100 million JPY]]
  #table(
    columns: 6,
    column-gutter: (auto, 1.5pt, auto),
    [Node $i$], [Type]  , [Module], [Half-1], [Half-3], [Foundation],
    [Isogo]   , [Small] , [3.6]   , [0.9]   , [N/A]   , [N/A]       , 
    [Tsu]     , [Middle], [3.6]   , [0.9]   , [2.7]   , [4.4]       ,
    [Ariake]  , [Large] , [3.6]   , [0.9]   , [2.7]   , [3.6]       ,
    [Kure]    , [Large] , [3.6]   , [0.9]   , [2.7]   , [3.6]       ,
  )
]<tab:table.2>

// 表3、ケース1の生産コスト（基地港湾・設置海域）
#figure(
  caption: figure.caption(
    position: top,
    [Production cost $bold(c)^-_i$ of each process at the base port and the installation site],),
  placement: none,
  supplement: "Table",
  kind: "table", // figureの種類
  )[
  #set text(size: 0.92em) // ← 表の文字サイズ
  #align(left)[#text(size: 0.9em)[100 million JPY]]
  #table(
    columns: 4,
    column-gutter: (auto, 1.5pt, auto),
    [Node $i$], [Type]               , [FOWT \ assembly], [FOWT \ install],
    [Akita]   , [Base \ port]        , [0.7]            , [N/A]           ,
    [Noshiro] , [Installation \ site], [N/A]            , [0.1]           ,
  )
]<tab:table.3>

// 表4、ケース1の輸送コスト
#figure(
  caption: figure.caption(
    position: top,
    [Transportation cost $bold(c)^(s h i p -)_(upright("i(t)j(t)"))$ per vessel],),
  placement: none,
  supplement: "Table",
  kind: "table",
)[
  #set text(size: 0.8em)        // 表の文字サイズ
  #align(left)[#text(size: 0.9em)[100 million JPY]]
  #table(
    columns: 8,
    [$c^(s h i p -)_(upright("i(t)j(t)"))$], table.cell(colspan: 7, align: center,)[Node $j$],
    table.cell(rowspan: 6, align: horizon)[Node $i$],
    []                                     , [Isogo], [Tsu]  , [Ariake], [Kure], [Akita], [Noshiro],
    [Isogo]                                , [N/A]  , [0.12] , [0.36]  , [0.24], [N/A]  , [N/A]    ,
    [Tsu]                                  , [N/A]  , [N/A]  , [0.30]  , [0.18], [0.42] , [N/A]    ,
    [Ariake]                               , [N/A]  , [0.30] , [N/A]   , [0.18], [0.42] , [N/A]    ,
    [Kure]                                 , [N/A]  , [0.18] , [0.18]  , [N/A] , [0.36] , [N/A]    ,
    [Akita]                                , [N/A]  , [N/A]  , [N/A]   , [N/A] , [N/A]  , [0.20]   ,
  )
]<tab:table.4>

// 表5、ケース1の保管コスト
#figure(
  caption: figure.caption(
    position: top,
    [Storage cost $bold(c)^(upright("component")-)_(upright("i(t)i(t+1)"))$],),
  placement: none,
  supplement: "Table",
  kind: "table",
)[
  #set text(size: 0.92em)        // 表の文字サイズ
  #align(left)[#text(size: 0.9em)[100 million JPY]]
  #table(
    columns: 3,
    column-gutter: (auto, 1.5pt, auto),
    [Node $i$], [component], [$c^(upright("component")-)_(upright("i(t)i(t+1)"))$],
    [Isogo]   , [Steel]  , [0],
    [Tsu]     , [Steel]  , [0],
    [Ariake]  , [Steel]  , [0],
    [Kure]    , [Steel]  , [0],
    table.cell(rowspan: 4, align: horizon)[Akita], [Tower]     , [0],
                                                   [Blade]     , [0],
                                                   [Nacelle]   , [0],
                                                   [Foundation], [0.36],
    [Noshiro] , [FOWT_installed], [0],

  )
]<tab:table.5>

次に、キャパシティ $bold(u)$ について述べる。
キャパシティは全リンクの部材1つあたりの生産・輸送・保管に対しかかり、 $bold(u^±)$ の双方に設定する。
はじめに生産リンクにかかるキャパシティについて述べる。
1ヶ月あたりの施設ごとの造船所の生産キャパシティを @tab:table.6 に、基地港湾と設置海域の生産キャパシティを @tab:table.7 に示す。
生産リンクにかかるキャパシティはプロセスごとに決定し、そのプロセスに使用する変換前後の部材に値を設定する。
値は1ヶ月あたりの生産可能数を表しており、小数点以下も設定している。
例えばノード1のモジュール生産は1ヶ月あたり0.25であり、これはノード1では4,8,12ヶ月目に1個ずつモジュール生産が可能であることを意味する。
能代沖の風車設置プロセスのキャパシティにキャパシティに下線がひいてあるが、5〜10月の6ヶ月間のみ5基の風車設置が可能であることを意味している。
これは日本海における海象を考慮したためである。
輸送リンクにおける処理可能数については船舶、部材の数ともに制限が無く無限に輸送を行えるとした。
保管リンクについてであるが、 @tab:table.8 に示す。
@tab:table.8 に記載のないものは保管が不可能であるとした。
各地点の各部材、各月毎に設定し、 $bold(u)^+$ と $bold(u)^-$ で同じ値である。

// 表6、ケース1の生産キャパシティ（造船所）
#figure(
  caption: figure.caption(
    position: top,
    [Capacity $bold(u)^±_(i(t)i(t))$ of processes at shipyards],),
  placement: none,
  supplement: "Table",
  kind: "table",
)[
  #set text(size: 0.8em)
  #table(
    columns: 6,
    column-gutter: (auto, 1.5pt, auto),
    [Facility $i$], [Type]    , [Module], [Half1], [Half3], [Foundation],
    [Isogo]       , [Small]   , [0.25]  , [0.25] , [N/A]  , [N/A]       ,
    [Tsu]         , [Mid-size], [0.75]  , [0.75] , [0.75] , [0.75]      ,
    [Ariake]      , [Large]   , [1]     , [1]    , [1]    , [1]         ,
    [Kure]        , [Large]   , [0.33]  , [0.33] , [0.33] , [0.33]      ,
  )
]<tab:table.6>

// 表7、ケース1の生産キャパシティ（基地港湾・設置海域）
#figure(
  caption: figure.caption(
    position: top,
    [Capacity $bold(u)^±_(i(t)i(t))$ of processes at the base port and the installation site],),
  placement: none,
  supplement: "Table",
  kind: "table",
)[
  #set text(size: 0.92em)
  #table(
    columns: 4,
    column-gutter: (auto, 1.5pt, auto),
    [Facility $i$], [Type]               , [FOWT], [FOWT install] ,
    [Akita]       , [Base \ port]        , [5]   , [N/A]          ,
    [Noshiro]     , [Installation \ site],[N/A]  , [#underline[5]],
  )
]<tab:table.7>

// 表8、ケース1の保管キャパシティ（基地港湾・設置海域）
#figure(
  caption: figure.caption(
    position: top,
    [Capacity $bold(u)^±_(upright("i(t)i(t+1)"))$ of storage links],),
  placement: none,
  supplement: "Table",
  kind: "table",
)[
  #set text(size: 0.92em)
  #table(
    columns: 3,
    column-gutter: (auto, 1.5pt, auto),
                                          [Facility $i$], [component]     , [$bold(u)^±_(upright("i(t)i(t+1)"))$],
                                          [Isogo]       , [Steel]         , [100]                                ,
                                          [Tsu]         , [Steel]         , [100]                                ,
                                          [Ariake]      , [Steel]         , [100]                                ,
                                          [Kure]        , [Steel]         , [100]                                ,
    table.cell(rowspan: 4, align: horizon)[Akita]       , [Tower]         , [25]                                 ,
                                                          [Blade]         , [75]                                 ,
                                                          [Nacelle]       , [25]                                 ,
                                                          [Foundation]    , [12]                                 ,
                                          [Noshiro]     , [FOWT_installed], [25]                                 ,

  )
]<tab:table.8>

上で述べた最適化計算を行った結果、風車導入にかかる総コストは338.0億となった。
@fig:figure.8 では12個のネットワークの内、1度でも使用された輸送・生産リンクを赤線で示してある。
生産・輸送・保管にかかるフロー $bold(x)$ の詳細を @tab:table.9 〜 @tab:table.11 に示す。
@tab:table.9 〜 @tab:table.11 を参照することにより、11月〜翌4月に各地で生産された浮体基礎は一度ノード5に輸送、そこで仮置きされ風車設置が可能となる5月以降に風車組立以降の処理が行われたことがわかる。
また、浮体基礎の輸送経路について@tab:table.9 、 @tab:table.10 を参照すると、津・有明・呉の造船所で1ヶ月に計1個または3個の浮体基礎を生産できた月は生産された造船所から基地港に浮体基礎が直接輸送され、浮体基礎が計2個生産できた月は浮体基礎が生産された造船所から他の造船所へ一度輸送されてから2個の浮体基礎を1隻の船舶でまとめて輸送することで効率よく浮体基礎を輸送していることが分かる。

// 図8、ケース1の結果
#figure(
  image("figs/Figure_8.png", width: 100%),
  placement: none,
  caption: "Overview of the optimization result of Case 1",
  supplement: "Fig.",
  kind: "image", // figureの種類
) <fig:figure.8>

// 表9、ケース1結果（生産）
#figure(
  caption: figure.caption(
    position: top,
    [Detailed result of production links $bold(x)_(i i)$ of Case 1],),
  placement: none,
  supplement: "Table",
  kind: "table",
)[
  #set text(size: 0.65em)
  #table(
    columns: 14, // Node / Processing + 12 months
    // 見出し 2 行目（11..10）
    [Facility $i$]                 ,[Processing]             ,[11], [12], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10],
    // -------- Node 2 --------
    table.cell([Tsu],rowspan: 4)   ,[Module \ production]    ,[0] , [1] , [1], [0], [1], [1], [0], [1], [1], [0], [1], [1] ,
                                    [Halfbody1 \ production] ,[0] , [1] , [1], [0], [1], [1], [1], [1], [0], [1], [1], [1] ,
                                    [Halfbody3 \ production] ,[0] , [1] , [1], [0], [1], [1], [1], [1], [0], [1], [1], [1] ,
                                    [Foundation \ production],[0] , [1] , [1], [0], [1], [0], [1], [1], [0], [1], [1], [1] ,
    // -------- Node 3 --------
    table.cell([Ariake],rowspan: 4),[Module \ production]    ,[1] , [1] , [1], [1], [1], [1], [1], [1], [1], [1], [1], [1] ,
                                    [Halfbody1 \ production] ,[1] , [1] , [1], [1], [1], [1], [1], [1], [1], [1], [1], [1] ,
                                    [Halfbody3 \ production] ,[1] , [1] , [1], [1], [1], [1], [1], [1], [1], [1], [1], [1] ,
                                    [Foundation \ production],[1] , [1] , [1], [1], [1], [1], [1], [1], [1], [1], [1], [1] ,
    // -------- Node 4 --------
    table.cell([Kure],rowspan: 4)  ,[Module \ production]    ,[0] , [0] , [1], [0], [0], [1], [0], [0], [1], [0], [0], [1] ,
                                    [Halfbody1 \ production] ,[0] , [0] , [1], [0], [0], [1], [0], [0], [1], [0], [0], [1] ,
                                    [Halfbody3 \ production] ,[0] , [0] , [1], [0], [0], [1], [0], [0], [1], [0], [0], [1] ,
                                    [Foundation \ production],[0] , [0] , [1], [0], [0], [1], [0], [0], [1], [0], [0], [1] ,
    // -------- Node 5 / 6 --------
    [Akita]                        ,[Assembly]               ,[0] , [0] , [0], [0], [0], [5], [5], [5], [5], [5], [2], [3] ,
    [Noshiro]                      ,[Installation]           ,[0] , [0] , [0], [0], [0], [5], [5], [5], [5], [5], [2], [3] ,
  )
]<tab:table.9>

// 表10、ケース1結果（輸送）
#figure(
  caption: figure.caption(
    position: top,
    [Detailed result of transportation links $bold(x)^(upright("component±"))_(i(t)j(t))$ of Case 1],),
  placement: none,
  supplement: "Table",
  kind: "table",
)[
  #set text(size: 0.65em)
  #table(
    columns: 14,
    column-gutter: (auto, 1.5pt, auto),
    table.cell(colspan: 2, align: center)[$bold(x)^(upright("component±"))_(i(t)j(t))$], table.cell(colspan: 12, align: center)[Month $t$]                      ,
    [$(i,j)$]               , [Component]                                              ,[11], [12], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10],
    [(Tsu, \ Kure)]         , [Foundation]                                             ,[0] , [1] , [0], [1], [0], [0], [1], [1], [0], [1], [1], [0] ,
    [(Tsu, \ Akita)]        , [Foundation]                                             ,[0] , [0] , [1], [0], [0], [1], [0], [0], [0], [0], [0], [1] ,
    [(Ariake, \ Kure)]      , [Foundation]                                             ,[0] , [1] , [1], [1], [0], [1], [1], [1], [1], [1], [1], [1] ,
    [(Ariake, \ Akita)]     , [Foundation]                                             ,[1] , [0] , [0], [0], [1], [0], [0], [0], [0], [0], [0], [0] ,
    [(Kure, \ Akita)]       , [Foundation]                                             ,[0] , [2] , [2], [2], [0], [2], [2], [2], [2], [2], [2], [2] ,
    [(Akita, \ Noshiro)]    , [FOWT]                                                   ,[0] , [0] , [0], [0], [0], [0], [5], [5], [5], [5], [2], [3] ,
  )
]<tab:table.10>

// 表11、ケース1結果（保管）
#figure(
  caption: figure.caption(
    position: top,
    [Detailed result of storage links $bold(x)^upright("component±")_(i(t)i(t+1))$ of Case 1],),
  placement: none,
  supplement: "Table",
  kind: "table",
)[
  #set text(size: 0.5em)
  #table(
    columns: 14,
    table.cell(colspan: 2, align: center)[$bold(x)^upright("component±")_(i(t)i(t+1))$], table.cell(colspan: 12, align: center)[Month $t$],    
    [Facility $i$]            , [Component]                                             , [11] , [12] , [1]  , [2]  , [3]  , [4]  , [5]  , [6]  , [7]  , [8]  , [9]  , [10] ,
    [Isogo]                   , [Steel]                                                 , [100], [100], [100], [100], [100], [100], [100], [100], [100], [100], [100], [N/A],
    [Tsu]                     , [Steel]                                                 , [100], [96] , [92] , [88] , [88] , [84] , [80] , [76] , [76] , [72] , [68] , [N/A],
    [Ariake]                  , [Steel]                                                 , [96] , [92] , [88] , [84] , [80] , [76] , [72] , [68] , [64] , [60] , [56] , [N/A],
    [Kure]                    , [Steel]                                                 , [100], [100], [96] , [96] , [96] , [92] , [92] , [92] , [88] , [88] , [88] , [N/A],
    [Akita]                   , [Tower]                                                 , [25] , [25] , [25] , [25] , [25] , [25] , [20] , [15] , [10] , [5]  , [3]  , [N/A],
    [Akita]                   , [Blade]                                                 , [75] , [75] , [75] , [75] , [75] , [75] , [60] , [45] , [30] , [15] , [9]  , [N/A],
    [Akita]                   , [Nacelle]                                               , [25] , [25] , [25] , [25] , [25] , [25] , [20] , [15] , [10] , [5]  , [3]  , [N/A],
    [Akita]                   , [Foundation]                                            , [1]  , [3]  , [6]  , [8]  , [9]  , [12] , [9]  , [6]  , [3]  , [0]  , [0]  , [N/A],
    [Noshiro]                 , [FOWT_installed]                                        , [0]  , [0]  , [0]  , [0]  , [0]  , [0]  , [5]  , [10] , [15] , [20] , [22] , [N/A],
  )
]<tab:table.11>

== ケース2:浮体仮置き施設の導入地点を変更した場合の風車導入計画の設計 <3.2ケース2:浮体仮置き施設の導入地点を変更した場合の風車導入計画の設計>
本節では @3.1ケース1:基地港への浮体仮置き施設の設置を想定した風車導入計画の設計 で設定した基地港湾での浮体基礎の仮置き設備を造船所と新しい地点に配置することを想定してケーススタディを行う。
仮置き施設を設定する場所、その際のネットワークは @fig:figure.9 とし、浮体基礎の仮置きのみが可能な造船所として新たに舞鶴造船所を追加した。
津造船所及び新たに設定した舞鶴造船所で仮置きが浮体基礎6基分ずつ可能とし費用は36 million yen、秋田港では浮体基礎の仮置きは不可能する。
その他の保管に関するコスト、キャパシティは不変とした。
また新地点を設定したため、その施設と他施設を結ぶ輸送リンクを新たに設定、船舶での輸送コストの設定を @tab:table.12 に示す。
それ以外のコスト・キャパシティ、需給量はケース1と同様とし25基の風車を能代沖に設置するとした。

// 図9、ケース2のネットワーク
#figure(
  image("figs/Figure_9.png", width: 100%),
  placement: none,
  caption: "Overview of the network configuration (case 2)",
  supplement: "Fig.",
  kind: "image", // figureの種類
) <fig:figure.9>

// 表12、ケース2の輸送コスト（新リンクのみ）
#figure(
  caption: figure.caption(
    position: top,
    [Transportation cost $bold(c)^(s h i p -)_(upright("i(t)j(t)"))$ per vessel],),
  placement: none,
  supplement: "Table",
  kind: "table",
)[
  #set text(size: 0.8em)        // 表の文字サイズ
  #align(left)[#text(size: 0.9em)[100 million JPY]]
  #table(
    columns: 4,
    [$bold(c)^(s h i p -)_(upright("i(t)j(t)"))$], table.cell(colspan: 3, align: center)[Node $j$],
    table.cell(rowspan: 5, align: horizon)[Node $i$],
    []        , [Akita] , [Maiduru],
    [Tsu]     , [0.42]  , [0.42]   ,
    [Ariake]  , [0.42]  , [0.24]   ,
    [Kure]    , [0.36]  , [0.24]   ,
    [Maiduru] , [0.18]  , [N/A]    ,
  )
]<tab:table.12>

最適化したサプライチェーンの概要を @fig:figure.10 に示す。
@fig:figure.10 では12個のネットワークの内、1度でも使用された輸送・生産リンクを赤線で示してある。
また輸送・生産・保管リンクにおけるフローの詳細を @tab:table.10 〜 @tab:table.12 に示す。
最適化の結果、総コストは337.3億となった。
これは同じ風車設置数であるケース1の場合と比較して約0.7億円低い結果となっている。
これらのことから、ケース1とケース2を比較することにより風車を25基設置する際、仮置き施設を配置する場所は基地港湾より2箇所の造船所の方がわずかにコストを抑えて配置できるという結果が得られた。

// 図10、ケース2の結果
#figure(
  image("figs/Figure_10.png", width: 100%),
  placement: none,
  caption: "Overview of the optimization result of Case 2",
  supplement: "Fig.",
  kind: "image", // figureの種類
) <fig:figure.10>

// 表13、ケース2結果（生産）
#figure(
  caption: figure.caption(
    position: top,
    [Detailed result of production links $x_(i i)$ of Case 2],
  ),
  placement: none,
  supplement: "Table",
  kind: "table",
)[
  #set text(size: 0.65em)
  #table(
    columns: 14, // Node / Processing + 12 months
    // 見出し行
    [Facility $i$]                 ,[Processing]             ,[11], [12], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10],
    // -------- Node 2 --------
    table.cell([Tsu],rowspan: 4)   ,[Module \ production]    ,[0] , [1] , [1], [0], [1], [1], [0], [1], [1], [0], [1], [1] ,
                                    [Halfbody1 \ production] ,[0] , [1] , [1], [0], [1], [1], [1], [1], [0], [1], [1], [1] ,
                                    [Halfbody3 \ production] ,[0] , [1] , [1], [0], [1], [1], [1], [1], [0], [1], [1], [1] ,
                                    [Foundation \ production],[0] , [1] , [1], [0], [1], [0], [1], [1], [0], [1], [1], [1] ,
    // -------- Node 3 --------
    table.cell([Ariake],rowspan: 4),[Module \ production]    ,[1] , [1] , [1], [1], [1], [1], [1], [1], [1], [1], [1], [1] ,
                                    [Halfbody1 \ production] ,[1] , [1] , [1], [1], [1], [1], [1], [1], [1], [1], [1], [1] ,
                                    [Halfbody3 \ production] ,[1] , [1] , [1], [1], [1], [1], [1], [1], [1], [1], [1], [1] ,
                                    [Foundation \ production],[1] , [1] , [1], [1], [1], [1], [1], [1], [1], [1], [1], [1] ,
    // -------- Node 4 --------
    table.cell([Kure],rowspan: 4)  ,[Module \ production]    ,[0] , [0] , [1], [0], [0], [1], [0], [0], [1], [0], [0], [1] ,
                                    [Halfbody1 \ production] ,[0] , [0] , [1], [0], [0], [1], [0], [0], [1], [0], [0], [1] ,
                                    [Halfbody3 \ production] ,[0] , [0] , [1], [0], [0], [1], [0], [0], [1], [0], [0], [1] ,
                                    [Foundation \ production],[0] , [0] , [1], [0], [0], [1], [0], [0], [1], [0], [0], [1] ,
    // -------- Node 5 / 6 --------
    [Akita]                        ,[Assembly]               ,[0] , [0] , [0], [0], [0], [5], [5], [5], [5], [5], [2], [3] ,
    [Noshiro]                      ,[Installation]           ,[0] , [0] , [0], [0], [0], [5], [5], [5], [5], [5], [2], [3] ,
  )
]<tab:table.13>

// 表14、ケース2結果（輸送）
#figure(
  caption: figure.caption(
    position: top,
    [Detailed result of transportation links $bold(x)^(upright("component±"))_(i(t)j(t))$ of Case 2],
  ),
  placement: none,
  supplement: "Table",
  kind: "table",
)[
  #set text(size: 0.65em)
  #table(
    columns: 14,
    table.cell(colspan: 2, align: center)[$bold(x)^(upright("component±"))_(i(t)j(t))$], table.cell(colspan: 12, align: center)[Month $t$]                      ,
    [$(i,j)$]               , [Component]                                              , [11], [12], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10],
    [(Tsu, \ Kure)]         , [Foundation]                                             , [0] , [0] , [0], [0], [0], [0], [0], [0], [0], [0], [1], [0] ,
    [(Tsu, \ Akita)]        , [Foundation]                                             , [0] , [0] , [0], [0], [0], [0], [2], [0], [3], [4], [0], [1] ,
    [(Ariake, \ Kure)]      , [Foundation]                                             , [0] , [0] , [1], [0], [0], [1], [0], [0], [1], [0], [1], [1] ,
    [(Ariake, \ Maiduru)]   , [Foundation]                                             , [1] , [1] , [0], [1], [1], [0], [0], [0], [0], [0], [0], [0] ,
    [(Ariake, \ Akita)]     , [Foundation]                                             , [0] , [0] , [0], [0], [0], [0], [1], [1], [0], [1], [0], [0] ,
    [(Kure, \ Tsu)]         , [Foundation]                                             , [0] , [0] , [2], [0], [0], [0], [0], [0], [0], [0], [0], [0] ,
    [(Kure, \ Maiduru)]     , [Foundation]                                             , [0] , [0] , [0], [0], [0], [2], [0], [0], [0], [0], [0], [0] ,
    [(Kure, \ Akita)]       , [Foundation]                                             , [0] , [0] , [0], [0], [0], [0], [0], [0], [2], [0], [2], [2] ,
    [(Maiduru, \ Akita)]    , [Foundation]                                             , [0] , [0] , [0], [0], [0], [0], [2], [4], [0], [0], [0], [0] ,
    [(Akita, \ Noshiro)]    , [FOWT]                                                   , [0] , [0] , [0], [0], [0], [0], [5], [5], [5], [5], [2], [3] ,
  )
]<tab:table.14>

// 表15、ケース2結果（保管）
#figure(
  caption: figure.caption(
    position: top,
    [Detailed result of storage links $bold(x)^(upright("component±")_(i(t)i(t+1))$ of Case 2],),
  placement: none,
  supplement: "Table",
  kind: "table",
)[
  #set text(size: 0.5em)
  #table(
    columns: 14,
    table.cell(colspan: 2, align: center)[$bold(x)^(upright("component±")_(i(t)i(t+1))$], table.cell(colspan: 12, align: center)[Month $t$],    
    [Facility $i$]            , [Component]     , [11] , [12] , [1]  , [2]  , [3]  , [4]  , [5]  , [6]  , [7]  , [8]  , [9]  , [10] ,
    [Isogo]                   , [Steel]         , [100], [100], [100], [100], [100], [100], [100], [100], [100], [100], [100], [N/A],
    [Tsu]                     , [Steel]         , [100], [96] , [92] , [88] , [88] , [84] , [80] , [76] , [76] , [72] , [68] , [N/A],
    [Tsu]                     , [Foundation]    , [0]  , [1]  , [4]  , [5]  , [5]  , [6]  , [5]  , [6]  , [3]  , [0]  , [0]  , [N/A],
    [Ariake]                  , [Steel]         , [96] , [92] , [88] , [84] , [80] , [76] , [72] , [68] , [64] , [60] , [56] , [N/A],
    [Kure]                    , [Steel]         , [100], [100], [96] , [96] , [96] , [92] , [92] , [92] , [88] , [88] , [88] , [N/A],
    [Maiduru]                 , [Foundation]    , [1]  , [2]  , [2]  , [3]  , [4]  , [6]  , [4]  , [0]  , [0]  , [0]  , [0]  , [N/A],
    [Akita]                   , [Tower]         , [25] , [25] , [25] , [25] , [25] , [25] , [20] , [15] , [10] , [5]  , [3]  , [N/A],
    [Akita]                   , [Blade]         , [75] , [75] , [75] , [75] , [75] , [75] , [60] , [45] , [30] , [15] , [9]  , [N/A],
    [Akita]                   , [Nacelle]       , [25] , [25] , [25] , [25] , [25] , [25] , [20] , [15] , [10] , [5]  , [3]  , [N/A],
    [Noshiro]                 , [FOWT_installed], [0]  , [0]  , [0]  , [0]  , [0]  , [0]  , [5]  , [10] , [15] , [20] , [22] , [N/A],
  )
]<tab:table.15>

// 4章 考察
= 考察 <4.考察>
本章ではケーススタディを踏まえた感度解析を行う。
ケーススタディでは浮体基礎の保管設備を秋田港に設置する場合と津造船所と舞鶴に設置する場合の2つのパターンを行い、秋田港に設置する場合がコストが7000万円高くなるという結果を得た。
そこで、本章では浮体基礎の保管設備を秋田港に設置しその設置コストを変化させた際、保管設備を津造船所と舞鶴に設置する場合よりも風車導入コストを抑えられる境界となるコストを求める。
これを行うことで、浮体基礎の保管設備を基地港湾に設置する場合のコスト上限を明らかにする。
二分探索を行い、 @fig:figure.11 に示すように行う。
はじめに下限値を0 yen、上限値のケース1で設定した36 million yenとして設定する。
そして秋田港の浮体基礎の仮置きコストをそれら中間値の 18 million yenとして設定する。
その他パラメータはケース1と同一とした最適化を行い、そのときの総コストをケース2の総コストと比較する。
総コストがケース2よりも低い場合には、境界値はより高い側にあるとみなし下限値を18 million yenに更新する。
逆に総コストがケース2よりも高い場合には、境界値はより低い側にあるとみなし上限値を18 million yenに更新する。
そして上限値と下限値の中間の値を新たな仮置きコストとして設定する。
この手順を上下限の差が十分に小さくなるまで繰り返すことで、ケース2と同等の総コストとなる秋田港の仮置きコストを求めた。

// 図11、考察の手法説明
#figure(
  image("figs/Figure_10.png", width: 100%),
  placement: none,
  caption: "Overview of the optimization result of Case 2",
  supplement: "Fig.",
  kind: "image", // figureの種類
) <fig:figure.11>

二分探索を行った結果、秋田港の浮体基礎の仮置きコストが約35.4 million yenとなった場合にケース2と同等の風車導入コストとなることがわかった。
これは元の値の96.6%に相当する。
この結果から、浮体基礎の仮置き設備を基地港湾に設置する場合、その設置コストが35.4 million yen以下であれば、津造船所と舞鶴に設置する場合と比較して風車導入コストを抑えられる可能性があることが示された。
考察から、このツールを用いて風車導入にかかるコストと施設のコストの関係を感度解析によって求めることができた。

= 結論 <5.結論>
本研究では、浮体式洋上風車における時系列を含んだ導入サプライチェーンを設計するためのシミュレーション手法を提案した。
具体的にはGMCNFモデルを拡張し、浮体式洋上風車の浮体製造〜風車設置段階に設定することでネットワーク最適化に基づいたサプライチェーンの設計を行った。
特に時系列の風車導入サプライチェーン構築に着目し保管リンク、浮体基礎の仮置場所などモデル化した。
さらに風車関連施設ごとの役割の差や設備差をモデル化した。
ケーススタディでは、日本国内の浮体式洋上風車のサプライチェーンを対象とし最適化を行なった。
ケーススタディを通して、提案手法により時間ステップごとにネットワークを設定することで仮置を考慮し、時系列ごとに最適輸送経路を求めることでプロジェクト期間全体のサプライチェーンを出力できることを示した。
サプライチェーンの設定を変更し、コスト・サプライチェーンの変化を分析できる点で提案手法は有用である。本ケーススタディでは、仮置施設の配置を変えた2つのケースを比較した。
さらに考察では、浮体基礎の仮置きコストの感度解析を行い、造船所と比較して基地港に仮置施設を設置する場合の仮置きコスト上限を明らかにした。

// --------------------------------------------------
// 参考文献
// --------------------------------------------------
// 他の.bibファイルを読み込む場合はこの行を使ってください
// ただし、現時点では公式フォーマットで定められている英語日本語の併記には対応できていません
#bibliography("references.bib",
 title: "参　考　文　献",
 style: "libs/jasnaoe-conf/jasnaoe-reference.csl",
 )
// --------------------------------------------------
// // 直接定義する場合はこのコードを編集してください
// #bibliography-list(
//   title: "参　考　文　献", // 参考文献の章のタイトル
// )[
//   #bib-item(<format-en-journal>)[
//     Family names and initials of all authors: Title of the paper, _abbreviated title of the journal (or conference proceedings),_ number of the volume, number of the issue, numbers of the first and last pages, and year of publication.
//   ]
//   #bib-item(<MakiStochastic2023>)[
//     Maki, A., Hoshino, K., Dostal, L. et al.: Stochastic stabilization and destabilization of ship maneuvering motion by multiplicative noise, _Journal of Marine Science and Technology_, 28, 704–718, 2023.
//   ]
//   #bib-item(<OkuboProduction2023>)[
//     Okubo. Y., Mitsuyuki. T.: Study of the practical application of production planning method using shipbuilding process simulation, _Journal of the Japan Society of Naval Architects and Ocean Engineers_, 37, 115-123, 2023 (in Japanese). \
//     大久保友結、満行泰河：船舶建造工程シミュレーションを用いた生産計画立案手法の現場適用に関する研究, _日本船舶海洋工学会論文集_, 37, 115-123, 2023.
//   ]
//   #bib-item(<YamamotoStructure1986>)[
//     Yamamoto, Y., Otsubo, H., Sumi, Y., and Fujino, M.: Ship Structural Mechanics, Seizando-Shoten Publishing Co., Ltd., 1986 (in Japanese). \
//     山本善之、大坪英臣, 角洋一、藤野正隆：船体構造力学、_成山堂書店_、1986。
//   ]
// ]
// --------------------------------------------------
// 


// 2章
/*
// 2章 提案手法
= 提案手法

// 2.1 概要
== 概要
@fig:Figure_1 に本研究で提案する浮体式洋上風車のサプライチェーン検討モデルの概要を示す。
提案する手法では浮体基礎を主な対象とし、浮体生産における鋼材の加工から浮体基礎の大組工程、さらに風車組立、設置といった浮体式洋上風車の生産プロセス、船舶による輸送プロセスを一般化多品種ネットワークフローモデルを用い表現する。
さらに、時刻ごとにネットワークを層とし、異なる時刻の層を結ぶフローを仮置きプロセスとして導入することで風車関連施設での部材保管を表現し、風車導入期間内の各期間における導入計画を考慮できるようにする。
表現したモデルに対し、風車関連施設における生産能力やその費用、風車・各部材の需給数とそれらを輸送する船舶の輸送能力やコストを入力し、整数線形計画問題(ILP）として定式化する。
この問題を解くことで風車導入期間全体の風車導入サプライチェーンを設計する。風車関連施設における生産能力，そのコスト、部材・風車の需給量、仮置可能数、そのコスト、施設間の輸送経路における船舶輸送コスト、輸送能力を時間ステップごとに入力し、最適化された風車・風車部材の時間ステップごとのフロー、輸送・仮置・生産にかかるコストを出力する。

#figure(
  image("figs/Figure_1.png", width: 100%),
  placement: none,
  caption: "Overview of the Proposed Method",
  supplement: "Fig.",
  kind: "image", // figureの種類
) <fig:Figure_1>

// 2.2 GMCNF最適化
== GMCNF最適化
ここからはGMCNFモデルによる最適化について説明する。
Fig.2は本研究におけるネットワークである。風車導入期間を複数の時刻に分け、時系列での導入計画を考慮している。
時刻ごとの風車関連施設をノード、ノード間の生産や部材の流れをリンクで表現している。
リンクには3種類あり、生産リンク・輸送リンク・仮置きリンクが存在する。
生産リンクはグラフループとして同ノード間を結び、部材が別の部材へ変化、組み立てられる。
輸送リンクは同時刻の別地点へ部材を輸送する。仮置きリンクは同地点の1つ後の時刻へ部材を輸送するという部材の保管の役割を持っている。
なお、Fig.2では表示の都合上輸送リンクのみにパラメータを記しているが、これは生産・仮置きリンクでも同様である。
これらノード・リンクにはFig.3のように風車に関連する部材が複数設定されており、それぞれがパラメータを持っている。
船舶は風車部材ではないが、部材を輸送する際に用いる。
ノードには風車の設置数や部材の供給量を表す需給数 $b$ を設定する。
リンクには3種類の文字を設定し、1つのリンクに流出・流入（プラス・マイナス）の2つの値を設定した。
1つ目は $x$ であり、リンクにおける部材や船舶のフローを表す。
通常の最適化問題ではこれを変数とすることがあるが、今回の手法では予めこれを決めるようにする。
2つ目は $u$ であり、リンクでの生産・輸送・仮置きの可能数、キャパシティである。
3つ目は $c$ であり、リンクの生産・輸送・仮置きにかかる単位量あたりの費用、コストである。
ここまで述べたパラメータに対し、コスト最小化を目的とした関数を式(1)、制約条件を式(2)`~`(6)として定式化を行った。
*/