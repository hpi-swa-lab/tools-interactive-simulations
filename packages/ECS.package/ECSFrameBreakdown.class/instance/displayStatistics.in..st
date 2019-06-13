as yet unclassified
displayStatistics: aCollection in: aMorph

	| offset totalTime title |
	aMorph removeAllMorphs.
	totalTime := 0.
	aCollection do: [:each | totalTime := totalTime + each third].
	totalTime = 0 ifTrue: [^ self].
	offset := 0.
	aCollection withIndexDo: [:each :index | | fraction theColor |
		title := each first.
		theColor := each second.
		fraction := each third / totalTime.
		aMorph addMorphBack: (Morph new
			hResizing: #spaceFill;
			clipSubmorphs: true;
			layoutFrame: (LayoutFrame fractions: (offset@0 extent: fraction@1));
			addMorph: (StringMorph new contents: title);
			balloonText: title;
			color: theColor
			yourself).
		offset := offset + fraction].