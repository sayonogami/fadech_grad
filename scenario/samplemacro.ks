@macro name="lr"
	@waitfadech
; @setpreviouslinefadeout
; 	このタグを通った後、次の文字が表示されたとき、
; 	現在フェードアウトしていない文字列をフェードアウトする。
; 	ただし@styleのplfadeoutがfalseのときに表示された文字は
; 	フェードアウトしない
	@setpreviouslinefadeout
	@l
	@r
@endmacro

@macro name="pgt"
	@waitfadech
	@p
	@cm
@endmacro

@macro name="backlaych"
	@waitfadech
	@backlay
@endmacro

@macro name=transx
	@stoptrans
	@eval exp="mp.method = mp.method!==void ? mp.method : (mp.rule!==void ? 'universal' : 'crossfade');"
	@trans * time=%time|400
	@wt * canskip=%canskip|true 
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

@return
