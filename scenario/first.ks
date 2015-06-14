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
@deffont edge color=0xffffff shadow=false edgecolor=0xffffff edgeextent=2 edgeemphasis=2048
;@deffont face="ＭＳ Ｐ明朝" size=24 bold=false rubyface="ＭＳ ゴシック"
@deffont face="@ＭＳ Ｐ明朝" size=24 bold rubyface="@ＭＳ ゴシック"

;@deffont edge=false shadow shadowcolor=0xffffff shadowoffsetx=10 shadowoffsety=10
@resetfont
;@setChGradation color="0x0000FF,0xffffff,0xff0000,0xffffff,0x00ff00" method="Rect" recttype=2 withruby withEdge=false

;@setChGradation color="0x0000FF,0x00ffff,0xff00ff,0xff0000" method="Rect" recttype=2

;@setChGradation color="0xFF00ff,0x000000" method="Circle" recttype=1 dir=90 withruby=false withEdge=false eachch ruby=false

@setDefaultChGradation color="0xFF0000,0x0000ff" method="Rect" recttype=2 dir=90 edge ch=false
@resetChGradation
;@setChGradation color="0xFF0000,0xFF0000,0xffffff,0x00ffff,0x00ffff" method="Rect" recttype=1 dir=45 withruby=true withEdge=false eachch=false ruby



; 背景に画像を読み込み、メッセージレイヤにメニューを描画
@backlaych
@loadbg storage="mori" page=back
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
@cm

@changebg_and_clear storage="mori"
　吉里吉里は、TJSというスクリプト言語を使っていろいろな事をするためのソフトウェアです。[lr]
　TJSはJavaとJavaScriptを足して３で割ったような言語で、CやC++に比べれば習得しやすい言語だと思います。[lr]
　吉里吉里ではこのTJSで本体を制御することにより、さまざまなアプリケーションを作成することができます。[lr]
　特にマルチメディア系の機能が強く、比較的静的な表現を用いる２Ｄゲームに適しています。[p]
*about_kirikiri2|
@cm
@setChGradation color="0xFF00ff,0x000000" method="Circle" recttype=1 dir=90 withruby=false withEdge=false eachch ruby=false

　吉里吉里は、レイヤと呼ばれる画面を何枚も重ね合わせて画面を構成します。[l]レイヤはアルファブレンドによる重ね合わせが可能で、階層構造を採ることもできます。[lr]
　レイヤには標準でPNG/JPEG/ERI/BMPを読み込み可能で、Susie-pluginで読み込み可能な形式を拡張することもできます。[lr]
　描画はあまり複雑なことはできませんが、半透明矩形の描画やアンチエイリアス可能な文字表示、画像の拡大縮小や変形を行う事ができます。[lr]
　AVI/MPEGやSWF(Macromedia Flash)をムービーとして再生させることができます。[p]
*about_kirikiri3|
@cm
　吉里吉里ではCD-DA、MIDIシーケンスデータ、PCMを再生させることができ、それぞれ音量調節が可能です。[l]PCMは無圧縮の.WAVファイルのほか、プラグインで再生可能な形式を拡張でき、OggVorbisも再生することができます。[lr]
　PCMは複数を同時に再生することができます。[l]CD-DAやMIDIシーケンスデータでも無理矢理やろうと思えば複数同時再生できます。[p]
*about_kirikiri4
@cm
　その他、周辺ツールとして、
複数のファイルを一つにまとめたり、単体で実行可能なファイルを作成することができる[font color=0xffff00]Releaser[resetfont]、[l]
吉里吉里本体の設定を行う[font color=0xffff00]吉里吉里設定[resetfont]、[l]
制作者側でフォントを用意し、プレーヤ側にフォントがインストールされて無くても使えるようにする[font color=0xffff00]レンダリング済みフォント作成ツール[resetfont]、[l]
透明度を持った画像フォーマット間の相互変換を行う[font color=0xffff00]透過画像フォーマットコンバータ[resetfont]があります。[lr]
[r]
@start_select
[link target=*to_syokai_start]メニューに戻る[endlink]
@end_select
[s]
