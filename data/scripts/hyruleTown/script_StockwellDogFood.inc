@ Stockwell pick up dog food
SCRIPT_START script_StockwellDogFood
	EndBlock
	SetPlayerIdle
	Call sub_0807DF28
	Call sub_080654FC
	SetAnimation 0x0001
	Call sub_080654EC
	Wait 0x003c
	MessageNoOverlap 0x2c16
	WaitUntilTextboxCloses
	CheckTextboxResult 
	JumpIf script_080143FA
	SetIntVariable 0x00000002
	Call sub_08065528
	Jump script_0801443E
script_080143FA:
	Call sub_080654EC
	Wait 0x001e
	MessageNoOverlap 0x2c18
	WaitUntilTextboxCloses
	Wait 0x000a
	SetIntVariable 0x00000000
	Call sub_08065528
	GivePlayerItem 0x0036
	WaitPlayerGetItem 
	MessageNoOverlap 0x2c19
	WaitUntilTextboxCloses
	SetIntVariable 0x00000303
	Call LoadMenu
.ifndef EU
	Wait 0x001e
	FaceAwayFromPlayer 
	MessageNoOverlap 0x2c22
	WaitUntilTextboxCloses
.endif
script_0801443E:
	SetAnimation 0x0004
	SetAction 0x0001
	Call sub_0807DF50
	EnablePlayerControl
SCRIPT_END