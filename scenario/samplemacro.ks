@macro name="lr"
	@waitfadech
; @setpreviouslinefadeout
; 	���̃^�O��ʂ�����A���̕������\�����ꂽ�Ƃ��A
; 	���݃t�F�[�h�A�E�g���Ă��Ȃ���������t�F�[�h�A�E�g����B
; 	������@style��plfadeout��false�̂Ƃ��ɕ\�����ꂽ������
; 	�t�F�[�h�A�E�g���Ȃ�
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



; �}�N�� start_select �̒�`
@macro name="start_select"
@backlaych
@nowait
@history output=false
@current page=back
@endmacro

; �}�N�� end_select �̒�`
@macro name="end_select"
@trans method=crossfade time=400
@wt
@endnowait
@history output=true
@current page=fore
@endmacro

@return
