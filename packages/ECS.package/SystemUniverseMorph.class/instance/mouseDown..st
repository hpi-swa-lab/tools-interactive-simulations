system-world-events
mouseDown: anEvent

	"systemUniverse registerResource: (mouseClickResource := MouseClick new position: anEvent position - self position)"
	mouseClickEntity := systemUniverse spawnNewWith: {ClickEvent new position: anEvent position - self position}.
	self grabKeyboard