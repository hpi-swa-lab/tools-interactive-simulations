system-world-events
mouseDown: anEvent

	"systemUniverse registerResource: (mouseClickResource := MouseClick new position: anEvent position - self position)"
	mouseClickEntity := systemUniverse spawnNewWith: {ClickEvent} do: [:event | event position: anEvent position - self position].
	self grabKeyboard