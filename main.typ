#import "libs/jasnaoe-conf/jasnaoe-conf_lib.typ": jasnaoe-conf
#show: jasnaoe-conf.with()

#import "libs/jasnaoe-conf/direct_bib_lib.typ": bibliography-list, bib-item, use-bib-item-ref
#show: use-bib-item-ref.with(numbering: "1)") // 番号の書式を指定

//----------------------------------------
//以下、申込に必要な最低限の情報です。
//本文には反映されませんが、共著者間でのレビュー時に必要かと思います。
/*
Paper Title(English): Time-Expanded Generalized Multi-Commodity Network Flow Model for Integrated Supply Chain Optimization of Floating Offshore Wind Turbine Installation
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
そこで本研究ではネットワーク最適化の一種である一般化多品種ネットワークフローモデル(GMCNF) #super[@1-16] を用いて時系列を考慮した浮体式洋上風車のサプライチェーンの最適化手法を提案する。
ネットワーク最適化モデルを用いることで多数の施設・工程・保管を含む大規模なサプライチェーンを過不足なく表現できるという利点がある。
提案手法の新規性は、部材生産から風車設置までの一連の浮体式洋上風車供給プロセスに対し、これを時系列に展開した点にある。
GMCNFを時系列に展開することで風車導入期間の途中の施設役割の変更や部材の保管を考慮したサプライチェーンの最適化が可能となる。
具体的には、部材の組み立てや設置に伴う状態変化および位置の変化に加えて、風車導入期間中の設備割り当ての変更や海象条件を考慮した風車設置計画の策定といった時間による変化、浮体基礎の仮置きを考慮したサプライチェーンの最適化が可能となる。

// 2章 提案手法
= 提案手法 <2提案手法>
// 2.1 定式化に用いた数式
== GMCNF定式化 <2.1GMCNF定式化> // あとで修正
本手法ではGMCNFモデルを用いて浮体式風車のサプライチェーンを表現する。
ノード $i$,$j$ とリンク $i j$ が存在し、リンクに対し対して2種類のフロー $x^+_(i j)$,$x^-_(i j)$ が定義される。
$x^+_(i j)$ はノードから流出する際のフロー、 $x^-_(i j)$ はノードへ流入する際のフローを表す。
これらに対し、目的関数を @eq:2-2 、制約条件を @eq:2-3 〜 @eq:2-6 として定式化を行う。
本研究では浮体式風車の部材の組立工程といった生産プロセス・輸送プロセス・保管プロセスにかかるコストを最小化とすることを目的としそれら部材(components)のフローを最適化する。

// 式2.2, 目的関数（式2.1は要素を使う）
$ min sum_((i(t)j(t')) in upright("Link"))  // 改行
    (bold(c)^(+T)_(i(t)j(t'))  bold(x)^+_(i(t)j(t')) + bold(c)^(-T)_(i(t)j(t')) bold(x)^-_(i(t)j(t')))
$ <eq:2-2>

// 式2.3, 需給制約 A行列のやつ
$ sum_(j:(i(t)j(t)) in upright("Link")) x^+_(i(t)j(t)) - sum_(j:(j(t)i(t)) in upright("Link")) x^+_(j(t)i(t)) \ // 改行
  + x^+_(i(t)i(t+1)) - x^-_(i(t-1)i(t))
  <= b_(i(t)) #h(3em) 
  ∀ i(t) in upright("Node")
$ <eq:2-3>

// 式2.4, B行列 Flow Transformation
$ B_(i j) bold(x)_(i j)^+ = bold(x)_(i j)^-  #h(3em) forall (i, j) in cal(A) $<eq:2-4>

// 式2.5, C行列制約
$ C_(i j)^+ bold(x)_(i j)^+ <= 0 #h(1em) text("and") #h(1em) C_(i j)^- bold(x)_(i j)^- <= 0 #h(3em) forall (i, j) in cal(A) $<eq:2-5>

// 式2.6, キャパシティu制約
$ 0 <= bold(x)_(i j)^+ <= bold(u)_(i j)^+ #h(1em) text("and") #h(1em) 0 <= bold(x)_(i j)^- <= bold(u)_(i j)^- #h(3em) forall (i, j) in cal(A) $<eq:2-6>

@eq:2-2 ではフローの単位量あたりのコストを $bold(c)^+_(i j)$ と設定し、フローとの積の和を目的関数としている。
@eq:2-3 はネットワークの構造を決定しており、ノードでの部材の流出入に制約をかけている。
そのノードから流出するフローからそのノードへ流入するフローを差し引いた値がそのノードに設定された需給数 $b$ 以下となるようにする制約である。
@eq:2-4 はリンクの流出入での生産による部材・状態変化や輸送・保管を表しており、変換前後の部材、その比率を定義する行列 $B$ によって $bold(x^+)$ 、$bold(x^-)$ 間の各部材、その比率の変化・また変化がないことを表している。
@eq:2-5 は行列 $C$ によってフローの複数部材間の比率を定めるものである。
@eq:2-6 はフローがリンクに設定したキャパシティ $bold(u)$ を超えないようにする制約である。

// 2.2 サプライチェーンのモデル化手法
== サプライチェーンのモデル化手法 <2.2サプライチェーンのモデル化手法>
本節では前節で定式化したGMCNFモデルに対して、浮体式洋上風車サプライチェーンを部材構成及びノード・リンク構造に適用する。
本研究に適用したネットワークモデルは @fig:figure.3 である。
造船所や基地港湾、設置海域といった風車に関係する施設のうちの特定の時刻をノード、それらを結ぶものをリンクとして定義する。
リンクには生産リンク、輸送リンク、保管リンクと3種類存在し、それぞれに定式化を行う。
ノード、リンクは使用される可能性があるもの全てに定義する。
@fig:figure.3 では全国に存在する風車関連施設を $t,t+1$ といった複数の時間ステップに定義しており、風車導入期間における時間ステップごとの施設状態を表すことができる。
// ↓
// ↓
// 図3、輸送・生産・保管リンクのネットワークモデル
#figure(
  image("figs/Figure_3.png", width: 100%),
  placement: none,
  caption: "Time series modeling",
  supplement: "Fig.",
  kind: "image", // figureの種類
) <fig:figure.3>

ここからはノードと各リンクについての説明と定式化を行う。
はじめにノードであるが、 $i(1)$,$j(1)$,$i(2)$,$j(2)$ が相当し、施設が時刻ごとに異なる能力を持つことを想定する。
ノードには需給数 $bold(b)$ を設定する。
パラメータは @eq:2-1 のように浮体式洋上風車サプライチェーンに関連する部材全てに設定する。

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

各リンクについての説明を行う。
3種類のリンク全てに2種類のパラメータ $bold(c)$,$bold(u)$ と設計変数 $bold(x)$ が存在し、1つのリンクに流出・流入（プラス・マイナス）の2つの値が設定される。
@eq:2-1 と同様に部材の種類だけ設定した。
生産リンクは同地点のリンクを結び組立が起こる際に用いられる。
本研究では組立の部材間関係・比率を @fig:figure.5 のように表す。
船舶は他の部材のみに輸送に用いられるため生産プロセスの関係には入っていない。
1つのリンクに流出・流入が存在することで生産リンクでの組立が表現可能となる。
@fig:figure.3 では $j(1)j(1)$,$j(2)j(2)$ が生産リンクである。
定式化であるが、制約条件の @eq:2-3 〜 @eq:2-6 を適用する。
@eq:2-3 は 1,2項目に適用される。
@eq:2-5 は @fig:figure.5 のプロセスを行う際に用いられるが、組立の段階ごとに異なる式を適用する。
@eq:2-7 モジュール製作、ハーフボディ1,3製作、浮体基礎大組が相当する。
@eq:2-8 は風車組立の際に用いる。
@eq:2-9 は風車設置の際に用いる。
これらを施設の役割に応じてノードに設定する。
@eq:2-6 は組立前に必要な部材の比率を定めており @eq:2-10, @eq:2-11 を用いる。
@eq:2-10 は浮体基礎大組時に制約をかけており、変換前に $(upright("halfbody1"):upright("halfbody3")) = (1:1)$ の比率となるようにしている。
@eq:2-11 は風車組立時に制約をかけており、変換前に $(upright("tower"):upright("blade"):upright("nacelle"):upright("foundation")) = (1:3:1:1)$ の比率となるようにしている。

// 図5、本研究で設定された生産プロセス
#figure(
  image("figs/Figure_5.png", width: 100%),
  placement: none,
  caption: "Components Defined in This Study and Their Production Processes",
  supplement: "Fig.",
  kind: "image", // figureの種類
) <fig:figure.5>

// 生産B行列、浮体基礎
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
)^- $<eq:2-7>

// 生産B行列、風車組立
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
)^- $<eq:2-8>

// 生産B行列、風車設置
$
x^upright("FOWT")^+ = x^(upright("FOWT_installed")^-)
$<eq:2-9>

// C行列、浮体基礎大組時の比率
$
x^(upright("halfbody1")+)
=
x^(upright("halfbody3")+)
$<eq:2-10>

// C行列、風車組立時の比率
$
x^(upright("tower")+) = 3 x^(upright("blade")+) = x^(upright("nacelle")+) = x^(upright("foundation")+)
$<eq:2-11>

輸送リンクは同じ時間ステップ内の各地に存在するノードを結ぶものであり、風車や部材を輸送する際に用いられる。
@fig:figure.3 では $i(1) j(1)$,$i(2) j(2)$ が相当する。
定式化であるが、は制約条件の @eq:2-3 〜 @eq:2-5 を適用する。
@eq:2-3 は 1,2項目に適用される。
@eq:2-5 では $B$ に単位行列を設定する。
これはリンクの流出時と流入時で部材の変化がなく、個数も一定であることを表している。

保管リンクは同じ地点の一つ先の時刻のノードへ結ぶものであり、部材を保管させるものである。
@fig:figure.3 ではノード $i(1)$ から $i(2)$ へ向かうリンク $i(1)i(2)$ とノード $j(1)$ から $j(2)$ へ向かうリンク $j(1)j(2)$ が保管リンクに相当する。
ネットワーク内に $t$ 個の時刻が存在する場合、同じ地点を結ぶ $t-1$ 個の保管リンク
これによって次の時間ステップへ部材の供給が可能となる、すなわち風車や部材の保管を表現できるようになる。
定式化であるが、は制約条件の @eq:2-3 〜 @eq:2-5 を適用する。
@eq:2-3 は 3,4項目に適用される。
@eq:2-4,@eq:2-5 は輸送リンクと同様である。 

最後にまとめとして本研究の概要について記す。
@fig:figure.1 に本研究で提案する浮体式洋上風車のサプライチェーン最適化モデルの概要を示す。
提案する手法では浮体基礎を主な対象とし、浮体生産における鋼材の加工から大組工程、さらに上部構造物との風車組立、風車設置といった浮体式洋上風車の生産プロセス、船舶による輸送プロセス、浮体の仮置きを含む保管プロセスを数理最適化モデルである一般化多品種ネットワークフロー(GMCNF) #super[@1-16] を用い表現する。
入力値としては、ノードとリンクに複数のパラメータを設定する。
造船所や基地港湾、設置海域といった風車に関係する施設のうちの特定の時刻をノードとして設定、それらに部材の需供数を設定する。
次に、部材がとり得る可能性がある施設での生産・保管、施設間の保管経路をリンクとして設定、各リンクにコストとキャパシティを設定する。
そして、入力したパラメータから生産・輸送・保管プロセスにかかるコスト最小化を目的として混合整数線形計画問題(MILP)を定式化しサプライチェーンの物流を最適化することで浮体式洋上風車の最適なサプライチェーンを得る。

// 図1、提案手法の概要
#figure(
  image("figs/Figure_1.png", width: 100%),
  placement: none,
  caption: "Overview of the Proposed Method",
  supplement: "Fig.",
  kind: "image", // figureの種類
) <fig:figure.1>

// 3章 ケーススタディ
= ケーススタディ <3ケーススタディ>
本章では浮体基礎の仮置き設備の配置場所に着目した2つの風車導入中の生産・輸送・保管のサプライチェーン最適化を行う。
どちらのケースでも日本国内に仮想的に風車関連施設に小型・中型・大型の3種類の造船所・基地港湾・設置海域を設定し、各地の造船所を用いたセミサブ型浮体製作から基地港湾での風車組立と保管、さらに設置海域での風車設置までを対象とし25基の風車を設置する最適化を行った。
ケース間の差異であるが、ケース1では基地港湾に浮体基礎の仮置き設備を設置することを想定し、ケース2ではケース1に加え造船所と仮置き設備を持つ施設を建設することを想定している。
時系列であるが、風車導入期間を11月から翌年の10月の1年間とし、1ヶ月ごとの12個の時間ステップを設定した。
今回のケースでは風車関連施設について、小型・中型・大型の3種類の造船所、基地港湾、設置海域を設定、それぞれが行える生産プロセスを設定した。
3種類の造船所であるが、小型造船所ではモジュール製作とハーフボディ1製作が行えるとし、中型造船所では小型造船所が持っている役割に加え、ハーフボディ3製作と洋上での浮体基礎製作が行えるとし、大型造船所では中型造船所の役割に加えドック内での浮体基礎製作が行えるとした。
また基地港湾では風車組立処理が行えるとし、風車設置海域では風車設置処理が行えるとした。
浮体基礎の仮置きは施設の種類に関係なく行うかを決定している。
また船舶による部材の輸送についてであるが、船舶による部材の輸送では1隻の船舶が @fig:figure.6 の比率となっている。
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
1箇所の小型・中型造船所、2箇所の大型造船所、1箇所の基地港・設置海域が含まれる。
実際には @fig:figure.7 が12層存在し、各々が1ヶ月の時刻を表す。
さらに同地点の次の時間ステップへの保管リンクが存在する。

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
ノードごとに各部材・風車の需給量を設定しており、設置海域には風車（設置済）の需要数である25を設定した。
また造船所では浮体基礎の生産に必要な鋼材を、基地港湾では上部構造物であるタワー、ブレード、ナセルを輸入しているとし、どちらも25基を設置するために十分量があると設定した。
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
    [Facility $i$]                                    , [component]     , [Nov.], [Dec.], [\~], [Oct.],
    [Small]                                           , [Steel]         , [∞]   , [0]  ,  [0] , [0]   ,
    [Middle]                                          , [Steel]         , [∞]   , [0]  ,  [0] , [0]   ,
    [Large1]                                          , [Steel]         , [∞]   , [0]  ,  [0] , [0]   ,
    [Large2]                                          , [Steel]         , [∞]   , [0]  ,  [0] , [0]   ,
    table.cell(rowspan: 3, align: horizon,)[Base port], [Tower]         , [∞]   , [0]  ,  [0] , [0]   ,
                                                        [Blade]         , [∞]   , [0]  ,  [0] , [0]   ,
                                                        [Nacelle]       , [∞]   , [0]  ,  [0] , [0]   ,
    [Installation site]                               , [FOWT_installed], [0]   , [0]  ,  [0] , [-25] ,
  )
]<tab:table.1>

次に、キャパシティ $bold(u)$ について述べる。
キャパシティは全リンクの部材1つあたりの生産・輸送・保管に対しかかる。
はじめに生産リンクにかかるキャパシティについて述べる。
1ヶ月あたりの施設ごとの造船所の生産キャパシティを @tab:table.6 に示す。
上で述べた施設の役割設定に基づき実行不可能な生産プロセスはN/Aとした。
基地港湾についてであるが、FOWT組立のみ5基分可能とした。
また設置海域についてであるが、風車設置のみが行えるとした。
風車設置は海象条件により実行可能時期が限られているとし、 @tab:table.7 に示す。
生産リンクにかかるキャパシティはプロセスごとに決定し、そのプロセスの実行可能数、使用する変換前後の部材・変換比率に合わせて値を設定する。
値は1ヶ月あたりの生産可能数を表しており、小数点以下も設定している。
例えば、ノード2のモジュール生産は1ヶ月あたり0.75であり、これはノード2では2,3,4,6,7,8,10,11,12ヶ月目にモジュール生産が可能であることを意味する。
輸送リンクでは無限に輸送を行えるとした。
保管リンクのキャパシティについてであるが、 @tab:table.8 に示す。
@tab:table.8 に記載のないものは保管が不可能であるとした。
各地点の各部材、各月毎に設定し、 $bold(u)^+$ と $bold(u)^-$ で同じ値である。

// 表6、ケース1の生産キャパシティ（造船所、基地港湾）
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
    columns: 5,
    column-gutter: (auto, 1.5pt, auto),
    [Facility $i$], [Module], [Half1], [Half3], [Foundation],
    [Small]       , [0.25]  , [0.25] , [0]    , [0]         ,
    [Middle]      , [0.75]  , [0.75] , [0.75] , [0.75]      ,
    [Large1]      , [1]     , [1]    , [1]    , [1]         ,
    [Large2]      , [0.33]  , [0.33] , [0.33] , [0.33]      ,
  )
]<tab:table.6>

// 表7、ケース1の生産キャパシティ（基地港湾・設置海域）
#figure(
  caption: figure.caption(
    position: top,
    [Capacity $bold(u)^±_(i(t)i(t))$ of processes at the installation site],),
  placement: none,
  supplement: "Table",
  kind: "table",
)[
  #set text(size: 0.92em)
  #table(
    columns: 13,
    [Month]              , [11] , [12] , [1]  , [2]  , [3]  , [4]  , [5]  , [6]  , [7]  , [8]  , [9]  , [10],
    [Installation limit] , [0]  , [0]  , [0]  , [0]  , [0]  , [0]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5] ,
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
                                          [Facility $i$]       , [component]     , [$bold(u)^±_(upright("i(t)i(t+1)"))$],
                                          [Small]              , [Steel]         , [100]                                ,
                                          [Middle]             , [Steel]         , [100]                                ,
                                          [Large1]             , [Steel]         , [100]                                ,
                                          [Large2]             , [Steel]         , [100]                                ,
    table.cell(rowspan: 4, align: horizon)[Base port]          , [Tower]         , [25]                                 ,
                                                                 [Blade]         , [75]                                 ,
                                                                 [Nacelle]       , [25]                                 ,
                                                                 [Foundation]    , [12]                                 ,
                                          [Installation \ site], [FOWT_installed], [25]                                 ,

  )
]<tab:table.8>

次にコスト $bold(c)$ について述べる。
コストは全リンクの部材1つあたりの生産・輸送・保管に対しかかり、各月ごとに同じ値を設定する。
施設の役割設定に基づき実行不可能な生産プロセスはN/Aとした。
リンクには $±$ があるが、$bold(c^-)$ にかける。
なおコストは数値として設定されており、単位は1億円である。

はじめに生産リンクにかかるコストについて述べる。
これらは風車関連施設にかかるコストであり、変換後の部材にかける。
造船所での生産コストを @tab:table.2 に、基地港・設置海域での生産コストを @tab:table.3 に示す。
造船所の種類ごとに行える生産プロセスの数が異なっている。
中型造船所では浮体基礎の大組工程にかかるコストが大型造船所よりも高くなっている。

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
  #table(
    columns: 5,
    column-gutter: (1.5pt, auto, auto),
    [Node $i$], [Module], [Half-1], [Half-3], [Foundation],
    [Small]   , [3.6]   , [0.9]   , [N/A]   , [N/A]       , 
    [Middle]  , [3.6]   , [0.9]   , [2.7]   , [4.4]       ,
    [Large1]  , [3.6]   , [0.9]   , [2.7]   , [3.6]       ,
    [Large2]  , [3.6]   , [0.9]   , [2.7]   , [3.6]       ,
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
  #table(
    columns: 3,
    column-gutter: (1.5pt, auto, auto),
    [Node $i$]           , [FOWT \ assembly], [FOWT \ install],
    [Base \ port]        , [0.7]            , [N/A]           ,
    [Installation \ site], [N/A]            , [0.1]           ,
  )
]<tab:table.3>

次に、輸送リンクにかかるコストについて述べる。
輸送リンクは船舶のみコストがかかりその他部材は0である。
値の設定を @tab:table.4 に示す。

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
  #table(
    columns: 8,
    [$c^(s h i p -)_(upright("i(t)j(t)"))$], table.cell(colspan: 7, align: center,)[Node $j$],
    table.cell(rowspan: 6, align: horizon)[Node $i$],
    []                                     , [Small], [Middle], [Large1], [Large2], [Base port], [Installation site],
    [Small]                                , [N/A]  , [0.12]  , [0.36]  , [0.24]  , [N/A]      , [N/A]              ,
    [Middle]                               , [N/A]  , [N/A]   , [0.30]  , [0.18]  , [0.42]     , [N/A]              ,
    [Large1]                               , [N/A]  , [0.30]  , [N/A]   , [0.18]  , [0.42]     , [N/A]              ,
    [Large2]                               , [N/A]  , [0.18]  , [0.18]  , [N/A]   , [0.36]     , [N/A]              ,
    [Base port]                            , [N/A]  , [N/A]   , [N/A]   , [N/A]   , [N/A]      , [0.20]             ,
  )
]<tab:table.4>

最後に、保管リンクにかかるコストについて述べる。
造船所は鋼材、浮体基礎、基地港湾では浮体基礎と上部構造物、設置海域では風車（設置済）の保管のみが可能とした。
値は @tab:table.5 のように設定した。

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
  #table(
    columns: 3,
    column-gutter: (auto, 1.5pt, auto),
    [Node $i$]                                       , [component]     , [$c^(upright("component")-)_(upright("i(t)i(t+1)"))$],
    [Small]                                          , [Steel]         , [0]                                                  ,
    [Middle]                                         , [Steel]         , [0]                                                  ,
    [Large1]                                         , [Steel]         , [0]                                                  ,
    [Large2]                                         , [Steel]         , [0]                                                  ,
    table.cell(rowspan: 4, align: horizon)[Base port], [Tower]         , [0]                                                  ,
                                                       [Blade]         , [0]                                                  ,
                                                       [Nacelle]       , [0]                                                  ,
                                                       [Foundation]    , [0.36]                                               ,
    [Installation site]                              , [FOWT_installed], [0]                                                  ,

  )
]<tab:table.5>

上で述べた最適化計算を行った結果、風車導入にかかる総コストは338.0億となった。
生産コストが303.6億、輸送コストが13.6億、保管コストが20.9億であった。
@fig:figure.8 では12個の時間ステップのうち、8月に使用された輸送・生産リンクを赤線で示してある。
生産・輸送・保管にかかるフロー $bold(x)$ のヒートマップを @fig:figure.9 〜 @fig:figure.11 に示す。
@fig:figure.9 〜 @fig:figure.11 を参照することにより、11月〜翌4月に各地で生産された浮体基礎は一度ノード5に輸送、そこで仮置きされ風車設置が可能となる5月以降に風車組立以降の処理が行われたことがわかる。
また、浮体基礎の輸送経路について @fig:figure.9 、 @fig:figure.10 を参照すると、中型・大型1・大型2の造船所で1ヶ月に計1個または3個の浮体基礎を生産できた月は生産された造船所から基地港に浮体基礎が直接輸送され、浮体基礎が計2個生産できた月は浮体基礎が生産された造船所から他の造船所へ一度輸送されてから2個の浮体基礎を1隻の船舶でまとめて輸送することで効率よく浮体基礎を輸送していることが分かる。

// 図8、ケース1の結果概要(8月)
#figure(
  image("figs/Figure_8.png", width: 100%),
  placement: none,
  caption: "Overview of the optimization result of August(Case 1)",
  supplement: "Fig.",
  kind: "image", // figureの種類
) <fig:figure.8>

// 図9、ケース1結果（生産）
#figure(
  image("figs/Figure_9.png", width: 100%),
  placement: none,
  caption: [Result of production links of Case 1],
  supplement: "Fig.",
  kind: "image", // figureの種類
) <fig:figure.9>

// 図10、ケース1結果（輸送）
#figure(
  image("figs/Figure_10.png", width: 100%),
  placement: none,
  caption: [Result of Detailed result of transportation links $bold(x)^(upright("component±"))_(i(t)j(t))$ of Case 1],
  supplement: "Fig.",
  kind: "image", // figureの種類
) <fig:figure.10>

// 図11、ケース1結果（保管）
#figure(
  image("figs/Figure_11.png", width: 100%),
  placement: none,
  caption: [Detailed result of storage links $bold(x)^upright("component±")_(i(t)i(t+1))$ of Case 1],
  supplement: "Fig.",
  kind: "image", // figureの種類
) <fig:figure.11>

== ケース2:浮体仮置き施設を新設した場合の風車導入計画の設計 <3.2ケース2:浮体仮置き施設を新設した場合の風車導入計画の設計>
本節では @3.1ケース1:基地港への浮体仮置き施設の設置を想定した風車導入計画の設計 で設定した風車関連施設に加え、新たに既存の造船所の1箇所と新しい地点に浮体基礎の仮置き設備を新設することを想定してケーススタディを行う。
ケース2のネットワークは @fig:figure.12 とし、既存のMiddle shipyard 及び新たに設定した地点である Wet-storage で仮置きが浮体基礎6基分ずつ可能とし費用は36 million yen、とした。
その他の保管に関するコスト、キャパシティは不変とした。
また新地点を設定したため、その施設と他施設を結ぶ輸送リンクを新たに設定、船舶での輸送コストの設定を @tab:table.12 に示す。
船舶の輸送キャパシティはケース1と同様の制限なしとした。
それ以外のコスト・キャパシティ、需給量はケース1と同様とし25基の風車を Installation siteに設置するとした。

// 図12、ケース2のネットワーク
#figure(
  image("figs/Figure_12.png", width: 100%),
  placement: none,
  caption: "Overview of the network configuration (case 2)",
  supplement: "Fig.",
  kind: "image", // figureの種類
) <fig:figure.12>

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
  #table(
    columns: 4,
    [$bold(c)^(s h i p -)_(upright("i(t)j(t)"))$], table.cell(colspan: 3, align: center)[Node $j$],
    table.cell(rowspan: 5, align: horizon)[Node $i$],
    []            , [Base port] , [Wet-storage],
    [Middle]      , [0.42]      , [0.42]       ,
    [Large1]      , [0.42]      , [0.24]       ,
    [Large2]      , [0.36]      , [0.24]       ,
    [Wet-storage] , [0.18]      , [N/A]        ,
  )
]<tab:table.12>

最適化の結果、総コストは336.6億であり、内訳は生産コストが303.6億、輸送コストが12.2億、保管コストが20.9億であり、同じ風車設置数であるケース1の場合と比較して輸送コストが1.4億円低い結果となった。
@fig:figure.13 では12個の時刻のうち、8月に使用された輸送・生産リンクを赤線で示してある。
また各月の輸送・生産・保管リンクにおけるフローの詳細を @fig:figure.14 〜 @fig:figure.16 に示す。
これらのことから、ケース1とケース2を比較することにより風車を25基設置する際、仮置き施設を新たに配置するとコストが抑えられることが判明した。

// 図10、ケース2の結果
#figure(
  image("figs/Figure_13.png", width: 100%),
  placement: none,
  caption: "Overview of the optimization result of August(Case 2)",
  supplement: "Fig.",
  kind: "image", // figureの種類
) <fig:figure.13>

// 図14、ケース2結果（生産）
#figure(
  image("figs/Figure_14.png", width: 100%),
  placement: none,
  caption: [Result of Detailed result of production links $bold(x)^(upright("component±"))_(i(t)j(t))$ of Case 2],
  supplement: "Fig.",
  kind: "image", // figureの種類
) <fig:figure.14>

// 図15、ケース2結果（輸送）
#figure(
  image("figs/Figure_15.png", width: 100%),
  placement: none,
  caption: [Result of Detailed result of transportation links $bold(x)^(upright("component±"))_(i(t)j(t))$ of Case 2],
  supplement: "Fig.",
  kind: "image", // figureの種類
) <fig:figure.15>

// 図16、ケース2結果（保管）
#figure(
  image("figs/Figure_16.png", width: 100%),
  placement: none,
  caption: [Detailed result of storage links $bold(x)^upright("component±")_(i(t)i(t+1))$ of Case 1],
  supplement: "Fig.",
  kind: "image", // figureの種類
) <fig:figure.16>

浮体基礎の仮置きについて Base port の仮置き数が増えているが、これは最適化計算においてコストが最小となる解は複数存在する中で今回表示された解は結果として表示されるのはそのうちの1通りのみであり、それが Base port の使用数が増えるものであったからであると考えられる。
Middle shipyard ・ Wet-storage ・ Baseport の3箇所で浮体基礎の仮置きコストは不変である。 
そして、風車設置が行えず浮体基礎が保管される Nov 〜 Apr の内どの月に Middle shipyard ・ Wet-storage から Baseport に輸送されてもコストは不変である。
そのため、その期間内には Middle shipyard ・ Wet-storage から Baseport に輸送された浮体基礎は輸送の始点・終点のどちらに仮置きされるかに関わらずコストが同様となると考えられる。
最小コストとなる Baseport の仮置き数は @fig:figure.15 と @fig:figure.16 を参照することにより風車設置不可能期間である最終月の4月までに4基は仮置きされることが分かる。

// 4章 考察
= 考察
本章ではケーススタディを踏まえた感度解析を2パターン行う。

== 基地港湾の仮置きコストを変化させた場合 <4.1_基地港湾の仮置きコストを変化させた場合>
ケーススタディ2では浮体基礎の保管設備を Middle shipyard ・ Wet-storage ・ Baseport の3箇所に設置した際の仮置き施設の使用状況を求めた。
この節ではケーススタディ2で設定された仮置きを行える施設に対し Baseport での浮体基礎の仮置きコストを変化させ最適化計算を行った場合のサプライチェーンを確認する。
これを行うことでそれぞれの施設での仮置き施設の使用状況の変化を求めることができ、特に Baseport がどの程度の仮置きコストであれば使用されやすいかの確認、すなわち施設建設の際の判断が可能となる。
Baseportでの仮置きコストの変化であるが、2 million yen ずつ変化させるものとする。
ケーススタディ2での元のコストが36 million yenであるため、20 million yenから50 million yenまでの範囲で変化させるものとする。
その他のcost、capacity、需給量はケーススタディ2のものと同様とする。

複数で最適化計算を行った結果、仮置き施設が最も使用される4月での Baseport での仮置き数を @tab:table.18 に示す。

#figure(
  caption: figure.caption(
    position: top,
    [Impact of Baseport wet storage cost variations on storage quantity and FOWT installation cost]),
  placement: none,
  supplement: "Table",
  kind: "table",
)[
  #table(
  columns: 3,
  align: center,
  [Floating foundation wet storage cost at Baseport], [Number of wet storage placed at Baseport in April], [FOWT installation cost],
  [2.0]        , [11], [328.2],
  [2.2]        , [11], [329.3],
  [2.4]        , [12], [330.4],
  [2.6]        , [12], [331.4],
  [2.8]        , [12], [332.4],
  [3.0]        , [12], [333.4],
  [3.2]        , [12], [334.4],
  [3.4]        , [12], [335.4],
  [3.6(Case 2)], [8] , [336.6],
  [3.8]        , [2] , [336.8],
  [4.0]        , [2] , [336.8],
  [4.2]        , [2] , [336.9],
  [4.4]        , [2] , [337.0],
  [4.6]        , [2] , [337.1],
  [4.8]        , [2] , [337.2],
  [5.0]        , [1] , [337.2],
)
]<tab:table.18>

@tab:table.18 より、Baseportでの仮置きコストが上昇すると4月での Baseport での仮置き数が減少すし、総コストが上昇することが分かる。
Baseport での仮置きコストを低下させる場合、 2 million yen低下させると風車導入にかかるコストが約1億円減少することから Baseportでの仮置きコストを低下させることは風車導入コストの削減に効果的であると考えられる。
これは、Baseport での仮置きコストが低い場合は施設が利用されやすくコスト変化の影響を受けやすいためであると考えられる。
反対に、Baseport での仮置きコストが高い場合は施設がほとんど利用されないため、コスト変化の影響を受けにくいと考えられる。

== 設置可能期間を変化させた場合 <4.2_設置可能月を変化させた場合>
ケーススタディ1,2では設置海域での風車設置プロセスを5月〜10月の6ヶ月間に5基ずつ行えると設定した。
本項では風車設置プロセスの実行可能月を風車を25基設置可能な6月〜10月の5ヶ月間から期間を1ヶ月ずつ増加させ計8パターンの風車導入コストを求める。
風車設置可能月を変化させたものを @tab:table.16 に示す。
その他値はケース1のものと同様とする。
パターン2はケーススタディ章ケース1と同様の設定である。

// 表16、設置可能月変更ケース設定（）
#figure(
  caption: figure.caption(
    position: top,
    [Change in FOWT installation window and ]),
  placement: none,
  supplement: "Table",
  kind: "table",
)[
  #table(
    columns: 13,
    [Month]    , [11] , [12] , [1]  , [2]  , [3]  , [4]  , [5]  , [6]  , [7]  , [8]  , [9]  , [10],
    [Pattern1] , [0]  , [0]  , [0]  , [0]  , [0]  , [0]  , [0]  , [5]  , [5]  , [5]  , [5]  , [5] ,
    [Pattern2] , [0]  , [0]  , [0]  , [0]  , [0]  , [0]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5] ,
    [Pattern3] , [0]  , [0]  , [0]  , [0]  , [0]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5] ,
    [Pattern4] , [0]  , [0]  , [0]  , [0]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5] ,
    [Pattern5] , [0]  , [0]  , [0]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5] ,
    [Pattern6] , [0]  , [0]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5] ,
    [Pattern7] , [0]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5] ,
    [Pattern8] , [5]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5]  , [5],
    )
]<tab:table.16>

最適化計算を行った結果を @tab:table.17 に示す。
6月から10月を風車設置可能期間としたパターン1は、25基の風車導入が不可能であった。
5月よりも前から設置可能としたパターン2以降、風車を25基設置可能であった。
設置可能開始時を前倒しし、設置可能時期を延ばすと風車導入コストが低減する傾向が見られた。
これは浮体の生産は時期が決まっており、浮体基礎の仮置きを行う必要がなくなるため、保管コストが削減されることが要因と考えられる。
また、風車設置時期を1ヶ月延ばすことの効果であるが、風車導入期間の開始時に近いほど効果が小さくなることがわかった。
例として、風車設置開始時期を5月から4月に早めた場合の風車導入コスト減少分は6.6億円なのに対し、12月から11月に早めた場合の風車導入コスト減少分は0.36億円であった。
これは後の期間になる程生産された浮体基礎の数が増加し、その仮置きに多額のコストがかかるためである。

// 表17：設置可能月変更ケース結果（風車設置数）
#figure(
  caption: figure.caption(
    position: top,
    [Change in FOWT installation window under fixed capacity],
  ),
  placement: none,
  supplement: "Table",
  kind: "table",
)[
  #align(left)[#text(size: 0.9em)[100 million JPY]]
  #table(
    columns: 2,
    [Pattern], [FOWT deployment cost],
    [1]      , [-],
    [2]      , [338.0],
    [3]      , [331.4],
    [4]      , [325.9],
    [5]      , [321.9],
    [6]      , [318.7],
    [7]      , [317.4],
    [8]      , [317.1],
  )
]<tab:table.17>


= 結論 <5.結論>
本研究では、浮体式洋上風車における時系列を含んだ導入サプライチェーンを設計するためのシミュレーション手法を提案した。
具体的にはGMCNFモデルを拡張し、浮体式洋上風車の浮体製造〜風車設置段階に設定することでネットワーク最適化に基づいたサプライチェーンの設計を行った。
特に時系列の風車導入サプライチェーン構築に着目し時刻による施設能力の変化や保管リンクのモデル化を行った。
さらに風車関連施設ごとの役割の差や設備差をモデル化した。
ケーススタディでは、日本国内の浮体式洋上風車のサプライチェーンを対象とし最適化を行なった。
ケーススタディを通して、提案手法により時間ステップごとにネットワークを設定することで仮置を考慮し、時系列ごとに最適輸送経路を求めることでプロジェクト期間全体のサプライチェーンを出力できることを示した。
サプライチェーンの設定を変更し、コスト・サプライチェーンの変化を分析できる点で提案手法は有用である。
本ケーススタディでは、仮置施設の配置を変えた2つのケースを比較した。
さらに考察では、浮体基礎の仮置きコストの感度解析を行い、shipyard と比較した Baseport に仮置きを行う意味のあるコスト、風車設置海域に設置する可能期間の変更によるコスト差を明らかにした。


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

// 式(5)〜(8),flow transformation constrants 生産プロセス制約（造船所、基地港湾、設置海域）、輸送保管
/*
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
$

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
*/

/*
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
*/