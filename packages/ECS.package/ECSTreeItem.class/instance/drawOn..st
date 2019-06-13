as yet unclassified
drawOn: aCanvas

	selected ifTrue: [
		aCanvas fillRectangle: self bounds color: Color lightBlue].
	hovered ifTrue: [
		aCanvas fillRectangle: self bounds color: (Color black alpha: 0.15)]