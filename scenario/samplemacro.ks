; 
; @waitfadech
; 　文字がすべてフェード終了するのを待つ。
; 　「前行のフェードが終了しないうちに次ページに行ってしまうことを防ぐ。」
;   ことを目的とします。
;;    このバージョンでは、以前のバージョンにあったバグ、
;;        トランジションなどによってフェード中の文字が消えてしまうこと
;;    は発生しません。
; 
; 　行の終わりにあって別の処理が始まる直前のタグ、付属の first.ks なら
;  [backlay] の直前に置けば動作する。
; 
; 　必要な箇所はおそらく [l] [p] [s] [backlay] の直前。
; 　一つあれば十分なので、マクロ中に
; ...[l][backlay]...
; 　のような箇所があれば、
; ...[waitfadech][l][backlay]...
; 　で良いです。
; 

@macro name="ld"
@waitfadech
@l
@endmacro

@macro name="backlaych"
@waitfadech
@backlay
@endmacro

@macro name="cmt"
@cm
@endmacro


; クリック待ちで改行。別に意味は無いです
@macro name="pgt"
@ld
@cmt
@endmacro


@return
