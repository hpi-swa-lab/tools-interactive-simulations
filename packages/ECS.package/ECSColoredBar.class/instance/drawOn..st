drawing
drawOn: aCanvas

	| offset barWidth leftPadding rightPadding |
	"leave some space for displaying the title and total time"
	leftPadding := 52.
	rightPadding := 40.
	
	aCanvas drawString: title
		in: (self position extent: leftPadding@self height) 
		font: nil color: Color black.
	
	total < 0 ifTrue: [
		^ aCanvas drawString: '<no data yet>' in: (self position + (leftPadding @ 0) extent: self extent) font: nil color: Color black].
	
	total = 0 ifTrue: [
		^ aCanvas drawString: '<below 1ms>' in: (self position + (leftPadding @ 0) extent: self extent) font: nil color: Color black].
	
	barWidth := (self width - leftPadding - rightPadding) max: 0.
	offset := leftPadding.
	sections withIndexDo: [:each :index | | fraction theColor title rect |
		title := each first.
		theColor := each second.
		fraction := ((each third / total) * barWidth) rounded.
		rect := ((offset@0 + self position) extent: fraction@(self height)).
		aCanvas 
			fillRectangle: rect color: theColor;
			drawString: title in: rect font: nil color: (theColor luminance < 0.5 ifTrue: [Color white] ifFalse: [Color black]).
		offset := offset + fraction].
	
	aCanvas drawString: ((total * 10.0) rounded / 10.0) asString 
		in: ((self position + ((leftPadding + barWidth + 2)@0)) extent: rightPadding@self height) 
		font: nil color: Color black.