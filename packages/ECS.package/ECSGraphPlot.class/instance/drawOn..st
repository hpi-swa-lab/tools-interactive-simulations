as yet unclassified
drawOn: aCanvas

	| max x lastY height |
	max := data max max: 1.
	x := 0.
	lastY := nil.
	height := self height - 1.
	
	aCanvas drawString: label, ' (', data last asString, '/', max asString, ')' at: self position.
	
	data do: [:value | | nowY |
		nowY := (value / max * self height) ceiling.
		
		lastY ifNotNil: [
			aCanvas
				line: x - self gap @ (height - lastY) + self position
				to: x @ (height - nowY) + self position width: 1 color: Color red].
		
		lastY := nowY.
		x := x + self gap]