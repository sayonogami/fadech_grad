; 
; @waitfadech
; �@���������ׂăt�F�[�h�I������̂�҂B
; �@�u�O�s�̃t�F�[�h���I�����Ȃ������Ɏ��y�[�W�ɍs���Ă��܂����Ƃ�h���B�v
;   ���Ƃ�ړI�Ƃ��܂��B
;;    ���̃o�[�W�����ł́A�ȑO�̃o�[�W�����ɂ������o�O�A
;;        �g�����W�V�����Ȃǂɂ���ăt�F�[�h���̕����������Ă��܂�����
;;    �͔������܂���B
; 
; �@�s�̏I���ɂ����ĕʂ̏������n�܂钼�O�̃^�O�A�t���� first.ks �Ȃ�
;  [backlay] �̒��O�ɒu���Γ��삷��B
; 
; �@�K�v�ȉӏ��͂����炭 [l] [p] [s] [backlay] �̒��O�B
; �@�����Ώ\���Ȃ̂ŁA�}�N������
; ...[l][backlay]...
; �@�̂悤�ȉӏ�������΁A
; ...[waitfadech][l][backlay]...
; �@�ŗǂ��ł��B
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


; �N���b�N�҂��ŉ��s�B�ʂɈӖ��͖����ł�
@macro name="pgt"
@ld
@cmt
@endmacro


@return
