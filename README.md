# fadech_grad
吉里吉里で文字のグラデーションを行うプラグインです。  
[詳しい説明はこちらに記載してあります](http://koumei.rejec.net/html/exp_fadechGrad.html "サークル煌明のサイト")

***
## 前行フェードアウト
次の行に移動したときに前の行がフェードアウトして薄くなる、前行フェードアウトを実装しました。

#### 設定

    @defstyle plfadeout pltime=400 plopacity=64 pldelay=2  
* plfadeout(true/false) :: 前行フェードを行うか  
* pltime :: フェード時間  
* plopacity :: フェード後の透明度  
* pldelay :: 1文字ずつ順番にフェードアウトを行う場合の、次の文字に行くまでの時間。0で全文字同時フェード  


    @setpreviouslinefadeout  

このタグを通った後、次の文字が表示されたとき、現在フェードアウトしていない文字列をフェードアウトする。  
ただし@styleのplfadeoutがfalseのときに表示された文字はフェードアウトしない  

マクロ例  

    @macro name="lr"  
        @waitfadech  
        ; 通常は改行の手前に配置する  
        @setpreviouslinefadeout  
        @l  
        @r  
    @endmacro  

***
#### 使い方
[graph]タグを使用した文字中画像、レンダリング済みフォントにも対応しています。  

    @setChGradation color="0xFF0000,0x0000FF" method="Circle" edge ch=false  
文字のエッジを、真ん中が赤、外側が青の円形グラデーションにします  

    @setChGradation color="0xFF0000,0xFF0000,0xffffff,0x00ffff,0x00ffff" method="Rect" ch  
文字を、左から赤→白→水色のグラデーションにします。  

    @setDefaultChGradation color="0xFF0000,0x000000,0xFFFFFF,0xFFFFFF" method="Circle" ch withEdge  
デフォルトのグラデーション設定を決めます。  

    @resetChGradation  
設定をデフォルトに戻します。  
