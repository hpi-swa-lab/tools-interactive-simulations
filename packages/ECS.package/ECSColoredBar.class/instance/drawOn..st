as yet unclassified
drawOn: aCanvas

	| offset |
	offset := 0.
	total <= 0 ifTrue: [^ self].
	sections withIndexDo: [:each :index | | fraction theColor title rect |
		title := each first.
		theColor := each second.
		fraction := ((each third / total) * self width) rounded.
		rect := ((offset@0 + self position) extent: fraction@(self height)).
		aCanvas 
			fillRectangle: rect color: theColor;
			drawString: title in: rect font: nil color: (theColor luminance < 0.5 ifTrue: [Color white] ifFalse: [Color black]).
		offset := offset + fraction].