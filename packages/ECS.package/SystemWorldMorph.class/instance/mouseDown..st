system-world-events
mouseDown: anEvent

	"systemWorld registerResource: (mouseClickResource := MouseClick new position: anEvent position - self position)"
	systemWorld ifNil: [^ self].
	mouseClickEntity := systemWorld spawnNewWith: {ClickEvent new position: anEvent position - self position}.
	self grabKeyboard