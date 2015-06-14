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
@deffont edge color=0xffffff shadow=false edgecolor=0xffffff edgeextent=2 edgeemphasis=2048
;@deffont face="�l�r �o����" size=24 bold=false rubyface="�l�r �S�V�b�N"
@deffont face="@�l�r �o����" size=24 bold rubyface="@�l�r �S�V�b�N"

;@deffont edge=false shadow shadowcolor=0xffffff shadowoffsetx=10 shadowoffsety=10
@resetfont
;@setChGradation color="0x0000FF,0xffffff,0xff0000,0xffffff,0x00ff00" method="Rect" recttype=2 withruby withEdge=false

;@setChGradation color="0x0000FF,0x00ffff,0xff00ff,0xff0000" method="Rect" recttype=2

;@setChGradation color="0xFF00ff,0x000000" method="Circle" recttype=1 dir=90 withruby=false withEdge=false eachch ruby=false

@setDefaultChGradation color="0xFF0000,0x0000ff" method="Rect" recttype=2 dir=90 edge ch=false
@resetChGradation
;@setChGradation color="0xFF0000,0xFF0000,0xffffff,0x00ffff,0x00ffff" method="Rect" recttype=1 dir=45 withruby=true withEdge=false eachch=false ruby



; �w�i�ɉ摜��ǂݍ��݁A���b�Z�[�W���C���Ƀ��j���[��`��
@backlaych
@loadbg storage="mori" page=back
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
@cm

@changebg_and_clear storage="mori"
�@�g���g���́ATJS�Ƃ����X�N���v�g������g���Ă��낢��Ȏ������邽�߂̃\�t�g�E�F�A�ł��B[lr]
�@TJS��Java��JavaScript�𑫂��ĂR�Ŋ������悤�Ȍ���ŁAC��C++�ɔ�ׂ�ΏK�����₷�����ꂾ�Ǝv���܂��B[lr]
�@�g���g���ł͂���TJS�Ŗ{�̂𐧌䂷�邱�Ƃɂ��A���܂��܂ȃA�v���P�[�V�������쐬���邱�Ƃ��ł��܂��B[lr]
�@���Ƀ}���`���f�B�A�n�̋@�\�������A��r�I�ÓI�ȕ\����p����Q�c�Q�[���ɓK���Ă��܂��B[p]
*about_kirikiri2|
@cm
@setChGradation color="0xFF00ff,0x000000" method="Circle" recttype=1 dir=90 withruby=false withEdge=false eachch ruby=false

�@�g���g���́A���C���ƌĂ΂���ʂ��������d�ˍ��킹�ĉ�ʂ��\�����܂��B[l]���C���̓A���t�@�u�����h�ɂ��d�ˍ��킹���\�ŁA�K�w�\�����̂邱�Ƃ��ł��܂��B[lr]
�@���C���ɂ͕W����PNG/JPEG/ERI/BMP��ǂݍ��݉\�ŁASusie-plugin�œǂݍ��݉\�Ȍ`�����g�����邱�Ƃ��ł��܂��B[lr]
�@�`��͂��܂蕡�G�Ȃ��Ƃ͂ł��܂��񂪁A��������`�̕`���A���`�G�C���A�X�\�ȕ����\���A�摜�̊g��k����ό`���s�������ł��܂��B[lr]
�@AVI/MPEG��SWF(Macromedia Flash)�����[�r�[�Ƃ��čĐ������邱�Ƃ��ł��܂��B[p]
*about_kirikiri3|
@cm
�@�g���g���ł�CD-DA�AMIDI�V�[�P���X�f�[�^�APCM���Đ������邱�Ƃ��ł��A���ꂼ�ꉹ�ʒ��߂��\�ł��B[l]PCM�͖����k��.WAV�t�@�C���̂ق��A�v���O�C���ōĐ��\�Ȍ`�����g���ł��AOggVorbis���Đ����邱�Ƃ��ł��܂��B[lr]
�@PCM�͕����𓯎��ɍĐ����邱�Ƃ��ł��܂��B[l]CD-DA��MIDI�V�[�P���X�f�[�^�ł��������낤�Ǝv���Ε��������Đ��ł��܂��B[p]
*about_kirikiri4
@cm
�@���̑��A���Ӄc�[���Ƃ��āA
�����̃t�@�C������ɂ܂Ƃ߂���A�P�̂Ŏ��s�\�ȃt�@�C�����쐬���邱�Ƃ��ł���[font color=0xffff00]Releaser[resetfont]�A[l]
�g���g���{�̂̐ݒ���s��[font color=0xffff00]�g���g���ݒ�[resetfont]�A[l]
����ґ��Ńt�H���g��p�ӂ��A�v���[�����Ƀt�H���g���C���X�g�[������Ė����Ă��g����悤�ɂ���[font color=0xffff00]�����_�����O�ς݃t�H���g�쐬�c�[��[resetfont]�A[l]
�����x���������摜�t�H�[�}�b�g�Ԃ̑��ݕϊ����s��[font color=0xffff00]���߉摜�t�H�[�}�b�g�R���o�[�^[resetfont]������܂��B[lr]
[r]
@start_select
[link target=*to_syokai_start]���j���[�ɖ߂�[endlink]
@end_select
[s]
