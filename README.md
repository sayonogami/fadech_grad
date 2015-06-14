# fadech_grad
吉里吉里で文字のグラデーションを行うプラグインです。
作りかけです。
[graph]タグを使用した文字中画像にも対応しています。

@setChGradation color="0xFF0000,0x0000FF" method="Circle" edge ch=false
文字のエッジを、真ん中が赤、外側が青の円形グラデーションにします

@setChGradation color="0xFF0000,0xFF0000,0xffffff,0x00ffff,0x00ffff" method="Rect" ch
文字を、左から赤→白→水色のグラデーションにします。

@setDefaultChGradation color="0xFF0000,0x000000,0xFFFFFF,0xFFFFFF" method="Circle" ch withEdge
デフォルトのグラデーション設定を決めます。

@resetChGradation
設定をデフォルトに戻します。
