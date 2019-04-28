as yet unclassified
mouseDown: anEvent

	"systemWorld registerResource: (mouseClickResource := MouseClick new position: anEvent position - self position)"
	mouseClickEntity := systemWorld spawnNewWith: {ClickEvent new position: anEvent position - self position}.
	self grabKeyboard