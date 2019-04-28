as yet unclassified
mouseDown: anEvent

	"systemWorld registerResource: (mouseClickResource := MouseClick new position: anEvent position - self position)"
	systemWorld spawn: (mouseClickEntity := Entity new attach: (ClickEvent new position: anEvent position - self position)).
	self grabKeyboard