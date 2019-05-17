as yet unclassified
mouseDown: anEvent

	grabbed := true.
	lastPosition := anEvent position.
	anEvent hand newMouseFocus: self