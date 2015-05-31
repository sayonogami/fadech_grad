@iscript
Scripts.execStorage("MessageLayerADV.tjs");
Scripts.execStorage("SubRoutine2.tjs");
@endscript
@call storage="samplemacro.ks"
; ↑ マクロ読み込み

@wait time=200

@eval exp="f.bg=''"
; ↑現在読み込まれている背景を記憶している

; マクロ changebg_and_clear の定義
@macro name="changebg_and_clear"
@if exp="mp.storage != f.bg"
; ↑既に読み込まれている背景と同じならば切り替え処理は行わない
@eval exp="f.bg = mp.storage"
@backlaych
@layopt layer=message0 page=back visible=false
@trans method=crossfade time=300
@wt
@image * layer=base page=back
@trans method=crossfade time=300
@wt
@cm
@layopt layer=message0 page=back visible=true
@trans method=crossfade time=300
@wt
@endif
@endmacro

; マクロ loadbg の定義
@macro name="loadbg"
@image * layer=base
@eval exp="f.bg = mp.storage"
@endmacro

; マクロ start_select の定義
@macro name="start_select"
@backlaych
@nowait
@history output=false
@current page=back
@endmacro

; マクロ end_select の定義
@macro name="end_select"
@trans method=crossfade time=400
@wt
@endnowait
@history output=true
@current page=fore
@endmacro

*syokai_start|吉里吉里とKAGの紹介 - メニュー


@startanchor

;* ADD
; withedge :: なし
;
;@deffont edge=false shadow=false edgecolor=0xff0000 edgeextent=2 edgeemphasis=1024
@position vertical=true
@deffont edge color=0xffffff shadow=false edgecolor=0x00ff00 edgeextent=2 edgeemphasis=1024
;@deffont face="ＭＳ Ｐ明朝" size=24 bold=false rubyface="ＭＳ ゴシック"
@deffont face="@ＭＳ Ｐ明朝" size=24 bold rubyface="@ＭＳ ゴシック"

;@deffont edge=false shadow shadowcolor=0xffffff shadowoffsetx=10 shadowoffsety=10
@resetfont
;@setChGradation color="0x0000FF,0xffffff,0xff0000,0xffffff,0x00ff00" method="Rect" recttype=2 withruby withEdge=false

;@setChGradation color="0x0000FF,0x00ffff,0xff00ff,0xff0000" method="Rect" recttype=2

;@setChGradation color="0xFF0000,0x0000ff" method="Circle" recttype=1 dir=90 withruby=false withEdge=false eachch ruby=false

@setChGradation color="0xFF0000,0x0000ff" method="Rect" recttype=2 dir=90 withruby=false withEdge eachch ruby

;@setChGradation color="0xFF0000,0xFF0000,0xffffff,0x00ffff,0x00ffff" method="Rect" recttype=1 dir=45 withruby=true withEdge=false eachch=false ruby



; 背景に画像を読み込み、メッセージレイヤにメニューを描画
@backlaych
@loadbg storage="_24_5" page=back
@current page=back

@cm
@layopt layer=message0 page=back visible=true
@nowait
@history output=false
@style align=center

[font size=40][r_き]吉[r_り]里吉里とKAGの紹介[resetfont][r]
[r]
[link target="*about_kirikiri"]吉里吉里[r_とは]とは[r_は][graph storage="ExQuestion.png" alt="!?"][endlink][r]
;[link target="*about_kirikiri"]吉里吉里[r_と]と[r_は]は[r_は][graph storage="ExQuestion.png" alt="!?"][endlink][r]
[link target="*about_kag"]KAGとは[endlink][r]
[r]
あいう[r_は]は[r_は][graph storage="das2pt22.png" alt="――"]え[r_は][graph storage="ExQuestion.png" alt="!?"]お[r]
[r]
[r]
[r_あい]あ[r]
[r_あいうえおかきくけこ][ch_あいうえ][r]
[r_均等割りの起きないあいうえおかきくけこ][ch_あいうえ][r]
[ch_あいうえ][r]
[r]
[link exp="kag.shutdown()" color=0xff0000 hint="吉里吉里/KAGの紹介を終了します"]終了[endlink]
@endnowait
@history output=true
@current page=fore

; メッセージレイヤのトランジション
@trans method=crossfade time=800
@wt

; 通過記録
@record

; 選択肢が選択されるまで停止
@s

*to_syokai_start
; syokai_start に戻る
@backlaych
@layopt layer=message0 page=back visible=false
@trans method=crossfade time=300
@wt
@jump target=*syokai_start


*about_kirikiri|吉里吉里とは
@changebg_and_clear storage="_24_4"
　吉里吉里は、TJSというスクリプト言語を使っていろいろな事をするためのソフトウェアです。[ld][r]
　TJSはJavaとJavaScriptを足して３で割ったような言語で、CやC++に比べれば習得しやすい言語だと思います。[ld][r]
　吉里吉里ではこのTJSで本体を制御することにより、さまざまなアプリケーションを作成することができます。[ld][r]
　特にマルチメディア系の機能が強く、比較的静的な表現を用いる２Ｄゲームに適しています。[p]
*about_kirikiri2|
@cm
　吉里吉里は、レイヤと呼ばれる画面を何枚も重ね合わせて画面を構成します。[ld]レイヤはアルファブレンドによる重ね合わせが可能で、階層構造を採ることもできます。[ld][r]
　レイヤには標準でPNG/JPEG/ERI/BMPを読み込み可能で、Susie-pluginで読み込み可能な形式を拡張することもできます。[ld][r]
　描画はあまり複雑なことはできませんが、半透明矩形の描画やアンチエイリアス可能な文字表示、画像の拡大縮小や変形を行う事ができます。[ld][r]
　AVI/MPEGやSWF(Macromedia Flash)をムービーとして再生させることができます。[p]
*about_kirikiri3|
@cm
　吉里吉里ではCD-DA、MIDIシーケンスデータ、PCMを再生させることができ、それぞれ音量調節が可能です。[ld]PCMは無圧縮の.WAVファイルのほか、プラグインで再生可能な形式を拡張でき、OggVorbisも再生することができます。[ld][r]
　PCMは複数を同時に再生することができます。[ld]CD-DAやMIDIシーケンスデータでも無理矢理やろうと思えば複数同時再生できます。[p]
*about_kirikiri4
@cm
　その他、周辺ツールとして、
複数のファイルを一つにまとめたり、単体で実行可能なファイルを作成することができる[font color=0xffff00]Releaser[resetfont]、[ld]
吉里吉里本体の設定を行う[font color=0xffff00]吉里吉里設定[resetfont]、[ld]
制作者側でフォントを用意し、プレーヤ側にフォントがインストールされて無くても使えるようにする[font color=0xffff00]レンダリング済みフォント作成ツール[resetfont]、[ld]
透明度を持った画像フォーマット間の相互変換を行う[font color=0xffff00]透過画像フォーマットコンバータ[resetfont]があります。[ld]
[r]
[r]
@start_select
[link target=*to_syokai_start]メニューに戻る[endlink]
@end_select
[s]

*about_kag|KAGとは
@changebg_and_clear storage="_24_4"
　KAGは、ビジ○アルノベルやサウンドノベルのようなノベル系ゲームや、選択肢を選んでストーリーが進むような文字ベースのアドベンチャーゲームを作成するためのキットです。[ld][r]
　KAGは吉里吉里をゲームエンジンとして動作させるためのスクリプトで、それ自体はTJSスクリプトで書かれています。[ld]KAG用のスクリプトは「シナリオ」と呼ばれ、TJSスクリプトとはまた別のものです。[ld]TJSスクリプトはプログラミングの知識がかなり必要になりますが、シナリオはより簡単で記述しやすいものです。[ld][r]
　KAGは吉里吉里の上に成り立つシステムなので、吉里吉里の機能のほとんどはKAGで使用できます。[p]
*about_kag3|
@cm
　KAGの文字表示は、ご覧の通りのアンチエイリアス文字表示に加え、[ld][r]
[font size=60]大きな文字[resetfont]を表示したり、[ld][r]
[ruby text="る"]ル[ruby text="び"]ビ[ruby text="を"]を[ruby text="ふ"]振[ruby text="っ"]っ[ruby text="た"]た[ruby text="り"]り、[ld][font shadow=false edge=true edgecolor=0xff0000]縁取り文字にしたり[resetfont]、[ld][r]
[style align=center]センタリングしてみたり[r]
[style align=right]右詰めしてみたり[r][resetstyle]
[ld]
[graph storage="ExQuestion.png" alt="!?"]のような特殊記号を表示してみたり、[ld][r]
と、いろいろできます。[p]
*about_kag4|
@position vertical=true
　また、縦書き表示をすることもできます。[ld][r]
　縦書きでも横書きと全く同じ機能を使用することができます。[p]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=true
@current layer=message1
@position frame=messageframe left=20 top=280 marginl=16 margint=16 marginr=0 marginb=16 draggable=true vertical=false
　このようにメッセージ枠の中にメッセージを表示させることもできます。[ld]アドベンチャーゲームで良くあるタイプです。[p]
@layopt layer=message1 visible=false
@layopt layer=message0 visible=true
@current layer=message0
@position vertical=false
*about_kag5|
@cm
　立ち絵はこのように(あいかわらず[ruby text="・"]う[ruby text="・"]にですみません)
@backlaych
@image storage=uni page=back layer=0 visible=true opacity=255
@trans method=crossfade time=1000
@wt
アルファブレンドによる重ね合わせが可能です。[ld][r]
　このように
@backlaych
@layopt page=back layer=0 opacity=128
@trans method=crossfade time=1000
@wt
薄く表示することもできます。[ld][r]
　標準の状態で３つまで重ね合わせて表示できます。[p]
@backlaych
@layopt page=back layer=0 visible=false
@trans method=crossfade time=300
@wt
*about_kag6|
@cm
　トランジション(画面切り替え)には標準で３つの種類があります。[ld][r]
　一つは単純なクロスフェード、[ld]
@backlaych
@layopt page=back layer=message0 visible=false
@trans method=crossfade time=300
@wt
@backlaych
@image storage="_24" page=back layer=base
@trans method=crossfade time=3000
@wt
@backlaych
@image storage="_24_4" page=back layer=base
@trans method=crossfade time=3000
@wt
@backlaych
@layopt page=back layer=message0 visible=true
@trans method=crossfade time=300
@wt
[ld][r]
　もう一つはスクロール効果を出すことのできるスクロールトランジション、[ld]
@backlaych
@layopt page=back layer=message0 visible=false
@trans method=crossfade time=300
@wt
@backlaych
@image storage="_24" page=back layer=base
@trans method=scroll from=right stay=stayfore time=3000
@wt
@backlaych
@image storage="_24_4" page=back layer=base
@trans method=scroll from=bottom stay=nostay time=3000
@wt
@backlaych
@layopt page=back layer=message0 visible=true
@trans method=crossfade time=300
@wt
[ld][r]
　そして最後は制作者が自由にパターンを作成できるユニバーサルトランジションです。[ld][r]
　ユニバーサルトランジションはルール画像と呼ばれるグレースケールの画像を用意し、その画像の暗いところからより早く切り替えが始まるものです。[ld][r]
　たとえば、[ld]
@image layer=base page=fore storage="trans1"
このようなルール画像であれば・・・[ld]
@backlaych
@layopt page=back layer=message0 visible=false
@image storage="_24_4" page=back layer=base
@trans method=crossfade time=300
@wt
@backlaych
@image storage="_24" page=back layer=base
@trans method=universal rule="trans1" vague=64 time=3000
@wt
@backlaych
@image storage="_24_4" page=back layer=base
@trans method=universal rule="trans1" vague=64 time=3000
@wt
@backlaych
@layopt page=back layer=message0 visible=true
@trans method=crossfade time=300
@wt
[r]
　たとえば、[ld]
@image layer=base page=fore storage="nami"
このようなルール画像であれば・・・[ld]
@backlaych
@layopt page=back layer=message0 visible=false
@image storage="_24_4" page=back layer=base
@trans method=crossfade time=300
@wt
@backlaych
@image storage="_24" page=back layer=base
@trans method=universal rule="nami" vague=64 time=3000
@wt
@backlaych
@image storage="_24_4" page=back layer=base
@trans method=universal rule="nami" vague=64 time=3000
@wt
@backlaych
@layopt page=back layer=message0 visible=true
@trans method=crossfade time=300
@wt
[r]
　という感じで、いろいろ作ることができます。[p]
*about_kag7|KAGとは
@cm
　BGMとしてはCD-DA、MIDI、PCMのいずれかを使用できます。[ld]効果音にはPCMを使用できます。[ld]いずれもフェードなどの音量制御ができます。[ld][r]
　PCMは標準で無圧縮の.WAVを再生できます。[ld]また、プラグインで再生可能な形式を拡張でき、OggVorbisも再生できます。[ld][r]
　ムービーはAVI/MPEG/SWFを再生できます。[p]
*about_kag8|
@cm
　KAGの変数は文字列でも数値でも入れることができ、変数の数は無制限、文字列の長さも無制限、数値は整数だけでなく実数も扱うことができます。[ld]これはKAGの変数の仕様というか、KAGのベースとなっているTJSの仕様です。[ld][r]
　変数にはゲーム変数とシステム変数の２種類あって、ゲーム変数は栞とともに読み込まれたり保存されたりしますが、システム変数は栞とは関係なく、常に同じ内容を保つことができるものです。[ld][r]
　変数を使った例を示します・・・[p]
@eval exp="f.v1 = intrandom(1, 9)"
@eval exp="f.v2 = intrandom(1, 9)"
@eval exp="f.ans = f.v1 * f.v2"
@eval exp="f.input = ''"
*about_kag_var_0|計算問題
@cm
　計算問題です。[emb exp="f.v1"] × [emb exp="f.v2"] は？[r]
[font size=20](下の入力欄に入力したら、よこの「OK」をクリックしてください)[resetfont][r]
[r]
@start_select
　[edit name="f.input" length=200 opacity=80 bgcolor=0x000000 color=0xffffff] [link target=*about_kag_var_1]　　　OK　　　[endlink][r]
[r]
　[link target=*about_kag_9]面倒なのでとばす[endlink]
@end_select
@eval exp="kag.fore.messages[0].links[0].object.focus()"
; ↑入力欄にフォーカスを設定する
; 「システム - 前に戻る」でこの位置に戻れるようにここで通過記録を行う
@record
[s]

*about_kag_var_1
@commit
@jump cond="str2num(f.input) == f.ans" target=*about_kag_var_correct
@cm
　不正解！[ld][r]
　もう一度入力してください。[p]
@jump target=*about_kag_var_0

*about_kag_var_correct
@cm
　正解です！[p]
@jump target=*about_kag_9

*about_kag_9|
@cm
;@snowinit forevisible=true backvisible=false
　KAGの大きな特徴として、その高い拡張性とカスタマイズ性が挙げられます。[ld]KAGだけでは実現できないような機能も、TJSを使って直接吉里吉里を制御すればいろいろな事ができます。[ld][r]
　たとえば、KAG用プラグインとして「雪」を表示させるプラグインを読み込めば、このように雪を表示させることができます。[ld]ほかにもトランジションの種類を増やすプラグインなどがあります。[ld][r]
　また、KAGそのものがTJSスクリプトで書かれているため、スクリプトを変更すれば隅々にわたって動作をカスタマイズする事ができます。[p]
;@backlaych
;@snowopt backvisible=false
;@trans method=crossfade time=1000
;@wt
;@snowuninit
*about_kag_fin|KAGの紹介おしまい
@cm
　KAGの紹介はこれでおしまいです。[ld][r]
　みなさんも是非吉里吉里/KAGを使ってすばらしいゲームを作ってください。[ld][r]
[r]
@start_select
[link exp="System.shellExecute('http://www.piass.com/kpc/')" hint="吉里吉里/KAG推進委員会を開きます"]吉里吉里/KAG推進委員会[endlink][r]
[link exp="System.shellExecute('http://kikyou.info/tvp/')" hint="ダウンロードページを開きます"]吉里吉里ダウンロードページ[endlink][r]
[r]
[link target=*to_syokai_start]メニューに戻る[endlink]
@end_select
[s]
