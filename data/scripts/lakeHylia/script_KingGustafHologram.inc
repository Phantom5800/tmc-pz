@ After ToD King Gustaf
SCRIPT_START script_KingGustafHologram
	BeginBlock
	DoPostScriptAction 0x0008
	EndBlock
script_08012368:
	CheckLocalFlag 0x0004
	JumpIfNot script_08012368
	Call sub_0807DF28
	SetPlayerIdle
	StopBgm
	BeginBlock
	SetFadeTime 0x0004
	SetFadeMask 0x00007fff
	DoFade5
	_0807E858 0x0080
	EndBlock
	WaitForFadeFinish
	PlayBgm BGM_ELEMENTAL_SANCTUARY
	EzloMessage 0x1401
	WaitUntilTextboxCloses
	SetAnimationState 0x0004
	DoPostScriptAction 0x0000
	DoPostScriptAction 0x0007
	PlaySound SFX_ELEMENT_FLOAT
	SetEntityVelocity 0xffff8000
	Wait 0x003c
	_0807E8E4_0
	StartPlayerScript script_PlayerAfterToD
	WaitForSyncFlagAndClear 0x00000001
	MessageNoOverlap 0x1402
	WaitUntilTextboxCloses
	StopBgm
	SetEntityVelocity 0x00010000
	Wait 0x003c
	BeginBlock
	SetFadeTime 0x0004
	SetFadeMask 0xffffffff
	DoFade4
	_0807E858 0x0080
	EndBlock
	WaitForFadeFinish
	PlayBGM
	EzloMessage 0x1403
	WaitUntilTextboxCloses
	SetIntVariable 0x00000203
	Call LoadMenu
	Call sub_0807DF50
	EnablePlayerControl
	DoPostScriptAction 0x0006
SCRIPT_END
	.2byte 0x0000