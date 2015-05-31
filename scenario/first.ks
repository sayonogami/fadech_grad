@iscript
Scripts.execStorage("MessageLayerADV.tjs");
Scripts.execStorage("SubRoutine2.tjs");
@endscript
@call storage="samplemacro.ks"
; �� �}�N���ǂݍ���

@wait time=200

@eval exp="f.bg=''"
; �����ݓǂݍ��܂�Ă���w�i���L�����Ă���

; �}�N�� changebg_and_clear �̒�`
@macro name="changebg_and_clear"
@if exp="mp.storage != f.bg"
; �����ɓǂݍ��܂�Ă���w�i�Ɠ����Ȃ�ΐ؂�ւ������͍s��Ȃ�
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

; �}�N�� loadbg �̒�`
@macro name="loadbg"
@image * layer=base
@eval exp="f.bg = mp.storage"
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

*syokai_start|�g���g����KAG�̏Љ� - ���j���[


@startanchor

;* ADD
; withedge :: �Ȃ�
;
;@deffont edge=false shadow=false edgecolor=0xff0000 edgeextent=2 edgeemphasis=1024
@position vertical=true
@deffont edge color=0xffffff shadow=false edgecolor=0x00ff00 edgeextent=2 edgeemphasis=1024
;@deffont face="�l�r �o����" size=24 bold=false rubyface="�l�r �S�V�b�N"
@deffont face="@�l�r �o����" size=24 bold rubyface="@�l�r �S�V�b�N"

;@deffont edge=false shadow shadowcolor=0xffffff shadowoffsetx=10 shadowoffsety=10
@resetfont
;@setChGradation color="0x0000FF,0xffffff,0xff0000,0xffffff,0x00ff00" method="Rect" recttype=2 withruby withEdge=false

;@setChGradation color="0x0000FF,0x00ffff,0xff00ff,0xff0000" method="Rect" recttype=2

;@setChGradation color="0xFF0000,0x0000ff" method="Circle" recttype=1 dir=90 withruby=false withEdge=false eachch ruby=false

@setChGradation color="0xFF0000,0x0000ff" method="Rect" recttype=2 dir=90 withruby=false withEdge eachch ruby

;@setChGradation color="0xFF0000,0xFF0000,0xffffff,0x00ffff,0x00ffff" method="Rect" recttype=1 dir=45 withruby=true withEdge=false eachch=false ruby



; �w�i�ɉ摜��ǂݍ��݁A���b�Z�[�W���C���Ƀ��j���[��`��
@backlaych
@loadbg storage="_24_5" page=back
@current page=back

@cm
@layopt layer=message0 page=back visible=true
@nowait
@history output=false
@style align=center

[font size=40][r_��]�g[r_��]���g����KAG�̏Љ�[resetfont][r]
[r]
[link target="*about_kirikiri"]�g���g��[r_�Ƃ�]�Ƃ�[r_��][graph storage="ExQuestion.png" alt="!?"][endlink][r]
;[link target="*about_kirikiri"]�g���g��[r_��]��[r_��]��[r_��][graph storage="ExQuestion.png" alt="!?"][endlink][r]
[link target="*about_kag"]KAG�Ƃ�[endlink][r]
[r]
������[r_��]��[r_��][graph storage="das2pt22.png" alt="�\�\"]��[r_��][graph storage="ExQuestion.png" alt="!?"]��[r]
[r]
[r]
[r_����]��[r]
[r_��������������������][ch_��������][r]
[r_�ϓ�����̋N���Ȃ���������������������][ch_��������][r]
[ch_��������][r]
[r]
[link exp="kag.shutdown()" color=0xff0000 hint="�g���g��/KAG�̏Љ���I�����܂�"]�I��[endlink]
@endnowait
@history output=true
@current page=fore

; ���b�Z�[�W���C���̃g�����W�V����
@trans method=crossfade time=800
@wt

; �ʉߋL�^
@record

; �I�������I�������܂Œ�~
@s

*to_syokai_start
; syokai_start �ɖ߂�
@backlaych
@layopt layer=message0 page=back visible=false
@trans method=crossfade time=300
@wt
@jump target=*syokai_start


*about_kirikiri|�g���g���Ƃ�
@changebg_and_clear storage="_24_4"
�@�g���g���́ATJS�Ƃ����X�N���v�g������g���Ă��낢��Ȏ������邽�߂̃\�t�g�E�F�A�ł��B[ld][r]
�@TJS��Java��JavaScript�𑫂��ĂR�Ŋ������悤�Ȍ���ŁAC��C++�ɔ�ׂ�ΏK�����₷�����ꂾ�Ǝv���܂��B[ld][r]
�@�g���g���ł͂���TJS�Ŗ{�̂𐧌䂷�邱�Ƃɂ��A���܂��܂ȃA�v���P�[�V�������쐬���邱�Ƃ��ł��܂��B[ld][r]
�@���Ƀ}���`���f�B�A�n�̋@�\�������A��r�I�ÓI�ȕ\����p����Q�c�Q�[���ɓK���Ă��܂��B[p]
*about_kirikiri2|
@cm
�@�g���g���́A���C���ƌĂ΂���ʂ��������d�ˍ��킹�ĉ�ʂ��\�����܂��B[ld]���C���̓A���t�@�u�����h�ɂ��d�ˍ��킹���\�ŁA�K�w�\�����̂邱�Ƃ��ł��܂��B[ld][r]
�@���C���ɂ͕W����PNG/JPEG/ERI/BMP��ǂݍ��݉\�ŁASusie-plugin�œǂݍ��݉\�Ȍ`�����g�����邱�Ƃ��ł��܂��B[ld][r]
�@�`��͂��܂蕡�G�Ȃ��Ƃ͂ł��܂��񂪁A��������`�̕`���A���`�G�C���A�X�\�ȕ����\���A�摜�̊g��k����ό`���s�������ł��܂��B[ld][r]
�@AVI/MPEG��SWF(Macromedia Flash)�����[�r�[�Ƃ��čĐ������邱�Ƃ��ł��܂��B[p]
*about_kirikiri3|
@cm
�@�g���g���ł�CD-DA�AMIDI�V�[�P���X�f�[�^�APCM���Đ������邱�Ƃ��ł��A���ꂼ�ꉹ�ʒ��߂��\�ł��B[ld]PCM�͖����k��.WAV�t�@�C���̂ق��A�v���O�C���ōĐ��\�Ȍ`�����g���ł��AOggVorbis���Đ����邱�Ƃ��ł��܂��B[ld][r]
�@PCM�͕����𓯎��ɍĐ����邱�Ƃ��ł��܂��B[ld]CD-DA��MIDI�V�[�P���X�f�[�^�ł��������낤�Ǝv���Ε��������Đ��ł��܂��B[p]
*about_kirikiri4
@cm
�@���̑��A���Ӄc�[���Ƃ��āA
�����̃t�@�C������ɂ܂Ƃ߂���A�P�̂Ŏ��s�\�ȃt�@�C�����쐬���邱�Ƃ��ł���[font color=0xffff00]Releaser[resetfont]�A[ld]
�g���g���{�̂̐ݒ���s��[font color=0xffff00]�g���g���ݒ�[resetfont]�A[ld]
����ґ��Ńt�H���g��p�ӂ��A�v���[�����Ƀt�H���g���C���X�g�[������Ė����Ă��g����悤�ɂ���[font color=0xffff00]�����_�����O�ς݃t�H���g�쐬�c�[��[resetfont]�A[ld]
�����x���������摜�t�H�[�}�b�g�Ԃ̑��ݕϊ����s��[font color=0xffff00]���߉摜�t�H�[�}�b�g�R���o�[�^[resetfont]������܂��B[ld]
[r]
[r]
@start_select
[link target=*to_syokai_start]���j���[�ɖ߂�[endlink]
@end_select
[s]

*about_kag|KAG�Ƃ�
@changebg_and_clear storage="_24_4"
�@KAG�́A�r�W���A���m�x����T�E���h�m�x���̂悤�ȃm�x���n�Q�[����A�I������I��ŃX�g�[���[���i�ނ悤�ȕ����x�[�X�̃A�h�x���`���[�Q�[�����쐬���邽�߂̃L�b�g�ł��B[ld][r]
�@KAG�͋g���g�����Q�[���G���W���Ƃ��ē��삳���邽�߂̃X�N���v�g�ŁA���ꎩ�̂�TJS�X�N���v�g�ŏ�����Ă��܂��B[ld]KAG�p�̃X�N���v�g�́u�V�i���I�v�ƌĂ΂�ATJS�X�N���v�g�Ƃ͂܂��ʂ̂��̂ł��B[ld]TJS�X�N���v�g�̓v���O���~���O�̒m�������Ȃ�K�v�ɂȂ�܂����A�V�i���I�͂��ȒP�ŋL�q���₷�����̂ł��B[ld][r]
�@KAG�͋g���g���̏�ɐ��藧�V�X�e���Ȃ̂ŁA�g���g���̋@�\�̂قƂ�ǂ�KAG�Ŏg�p�ł��܂��B[p]
*about_kag3|
@cm
�@KAG�̕����\���́A�����̒ʂ�̃A���`�G�C���A�X�����\���ɉ����A[ld][r]
[font size=60]�傫�ȕ���[resetfont]��\��������A[ld][r]
[ruby text="��"]��[ruby text="��"]�r[ruby text="��"]��[ruby text="��"]�U[ruby text="��"]��[ruby text="��"]��[ruby text="��"]��A[ld][font shadow=false edge=true edgecolor=0xff0000]����蕶���ɂ�����[resetfont]�A[ld][r]
[style align=center]�Z���^�����O���Ă݂���[r]
[style align=right]�E�l�߂��Ă݂���[r][resetstyle]
[ld]
[graph storage="ExQuestion.png" alt="!?"]�̂悤�ȓ���L����\�����Ă݂���A[ld][r]
�ƁA���낢��ł��܂��B[p]
*about_kag4|
@position vertical=true
�@�܂��A�c�����\�������邱�Ƃ��ł��܂��B[ld][r]
�@�c�����ł��������ƑS�������@�\���g�p���邱�Ƃ��ł��܂��B[p]
@layopt layer=message0 visible=false
@layopt layer=message1 visible=true
@current layer=message1
@position frame=messageframe left=20 top=280 marginl=16 margint=16 marginr=0 marginb=16 draggable=true vertical=false
�@���̂悤�Ƀ��b�Z�[�W�g�̒��Ƀ��b�Z�[�W��\�������邱�Ƃ��ł��܂��B[ld]�A�h�x���`���[�Q�[���ŗǂ�����^�C�v�ł��B[p]
@layopt layer=message1 visible=false
@layopt layer=message0 visible=true
@current layer=message0
@position vertical=false
*about_kag5|
@cm
�@�����G�͂��̂悤��(��������炸[ruby text="�E"]��[ruby text="�E"]�ɂł��݂܂���)
@backlaych
@image storage=uni page=back layer=0 visible=true opacity=255
@trans method=crossfade time=1000
@wt
�A���t�@�u�����h�ɂ��d�ˍ��킹���\�ł��B[ld][r]
�@���̂悤��
@backlaych
@layopt page=back layer=0 opacity=128
@trans method=crossfade time=1000
@wt
�����\�����邱�Ƃ��ł��܂��B[ld][r]
�@�W���̏�ԂłR�܂ŏd�ˍ��킹�ĕ\���ł��܂��B[p]
@backlaych
@layopt page=back layer=0 visible=false
@trans method=crossfade time=300
@wt
*about_kag6|
@cm
�@�g�����W�V����(��ʐ؂�ւ�)�ɂ͕W���łR�̎�ނ�����܂��B[ld][r]
�@��͒P���ȃN���X�t�F�[�h�A[ld]
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
�@������̓X�N���[�����ʂ��o�����Ƃ̂ł���X�N���[���g�����W�V�����A[ld]
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
�@�����čŌ�͐���҂����R�Ƀp�^�[�����쐬�ł��郆�j�o�[�T���g�����W�V�����ł��B[ld][r]
�@���j�o�[�T���g�����W�V�����̓��[���摜�ƌĂ΂��O���[�X�P�[���̉摜��p�ӂ��A���̉摜�̈Â��Ƃ��납���葁���؂�ւ����n�܂���̂ł��B[ld][r]
�@���Ƃ��΁A[ld]
@image layer=base page=fore storage="trans1"
���̂悤�ȃ��[���摜�ł���΁E�E�E[ld]
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
�@���Ƃ��΁A[ld]
@image layer=base page=fore storage="nami"
���̂悤�ȃ��[���摜�ł���΁E�E�E[ld]
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
�@�Ƃ��������ŁA���낢���邱�Ƃ��ł��܂��B[p]
*about_kag7|KAG�Ƃ�
@cm
�@BGM�Ƃ��Ă�CD-DA�AMIDI�APCM�̂����ꂩ���g�p�ł��܂��B[ld]���ʉ��ɂ�PCM���g�p�ł��܂��B[ld]��������t�F�[�h�Ȃǂ̉��ʐ��䂪�ł��܂��B[ld][r]
�@PCM�͕W���Ŗ����k��.WAV���Đ��ł��܂��B[ld]�܂��A�v���O�C���ōĐ��\�Ȍ`�����g���ł��AOggVorbis���Đ��ł��܂��B[ld][r]
�@���[�r�[��AVI/MPEG/SWF���Đ��ł��܂��B[p]
*about_kag8|
@cm
�@KAG�̕ϐ��͕�����ł����l�ł�����邱�Ƃ��ł��A�ϐ��̐��͖������A������̒������������A���l�͐��������łȂ��������������Ƃ��ł��܂��B[ld]�����KAG�̕ϐ��̎d�l�Ƃ������AKAG�̃x�[�X�ƂȂ��Ă���TJS�̎d�l�ł��B[ld][r]
�@�ϐ��ɂ̓Q�[���ϐ��ƃV�X�e���ϐ��̂Q��ނ����āA�Q�[���ϐ��͞x�ƂƂ��ɓǂݍ��܂ꂽ��ۑ����ꂽ�肵�܂����A�V�X�e���ϐ��͞x�Ƃ͊֌W�Ȃ��A��ɓ������e��ۂ��Ƃ��ł�����̂ł��B[ld][r]
�@�ϐ����g������������܂��E�E�E[p]
@eval exp="f.v1 = intrandom(1, 9)"
@eval exp="f.v2 = intrandom(1, 9)"
@eval exp="f.ans = f.v1 * f.v2"
@eval exp="f.input = ''"
*about_kag_var_0|�v�Z���
@cm
�@�v�Z���ł��B[emb exp="f.v1"] �~ [emb exp="f.v2"] �́H[r]
[font size=20](���̓��͗��ɓ��͂�����A�悱�́uOK�v���N���b�N���Ă�������)[resetfont][r]
[r]
@start_select
�@[edit name="f.input" length=200 opacity=80 bgcolor=0x000000 color=0xffffff] [link target=*about_kag_var_1]�@�@�@OK�@�@�@[endlink][r]
[r]
�@[link target=*about_kag_9]�ʓ|�Ȃ̂łƂ΂�[endlink]
@end_select
@eval exp="kag.fore.messages[0].links[0].object.focus()"
; �����͗��Ƀt�H�[�J�X��ݒ肷��
; �u�V�X�e�� - �O�ɖ߂�v�ł��̈ʒu�ɖ߂��悤�ɂ����ŒʉߋL�^���s��
@record
[s]

*about_kag_var_1
@commit
@jump cond="str2num(f.input) == f.ans" target=*about_kag_var_correct
@cm
�@�s�����I[ld][r]
�@������x���͂��Ă��������B[p]
@jump target=*about_kag_var_0

*about_kag_var_correct
@cm
�@�����ł��I[p]
@jump target=*about_kag_9

*about_kag_9|
@cm
;@snowinit forevisible=true backvisible=false
�@KAG�̑傫�ȓ����Ƃ��āA���̍����g�����ƃJ�X�^�}�C�Y�����������܂��B[ld]KAG�����ł͎����ł��Ȃ��悤�ȋ@�\���ATJS���g���Ē��ڋg���g���𐧌䂷��΂��낢��Ȏ����ł��܂��B[ld][r]
�@���Ƃ��΁AKAG�p�v���O�C���Ƃ��āu��v��\��������v���O�C����ǂݍ��߂΁A���̂悤�ɐ��\�������邱�Ƃ��ł��܂��B[ld]�ق��ɂ��g�����W�V�����̎�ނ𑝂₷�v���O�C���Ȃǂ�����܂��B[ld][r]
�@�܂��AKAG���̂��̂�TJS�X�N���v�g�ŏ�����Ă��邽�߁A�X�N���v�g��ύX����΋��X�ɂ킽���ē�����J�X�^�}�C�Y���鎖���ł��܂��B[p]
;@backlaych
;@snowopt backvisible=false
;@trans method=crossfade time=1000
;@wt
;@snowuninit
*about_kag_fin|KAG�̏Љ���܂�
@cm
�@KAG�̏Љ�͂���ł����܂��ł��B[ld][r]
�@�݂Ȃ��������g���g��/KAG���g���Ă��΂炵���Q�[��������Ă��������B[ld][r]
[r]
@start_select
[link exp="System.shellExecute('http://www.piass.com/kpc/')" hint="�g���g��/KAG���i�ψ�����J���܂�"]�g���g��/KAG���i�ψ���[endlink][r]
[link exp="System.shellExecute('http://kikyou.info/tvp/')" hint="�_�E�����[�h�y�[�W���J���܂�"]�g���g���_�E�����[�h�y�[�W[endlink][r]
[r]
[link target=*to_syokai_start]���j���[�ɖ߂�[endlink]
@end_select
[s]
