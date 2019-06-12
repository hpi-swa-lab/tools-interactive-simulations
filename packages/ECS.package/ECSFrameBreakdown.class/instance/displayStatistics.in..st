as yet unclassified
displayStatistics: aCollection in: aMorph

	| offset totalTime |
	aMorph removeAllMorphs.
	totalTime := 0.
	aCollection do: [:each | totalTime := totalTime + each second].
	totalTime = 0 ifTrue: [^ self].
	offset := 0.
	aCollection withIndexDo: [:each :index | | fraction hash |
		fraction := each second / totalTime.
		hash := (each first hash \\ 16rffffff) / 16rffffff.
		aMorph addMorphBack: (Morph new
			hResizing: #spaceFill;
			clipSubmorphs: true;
			layoutFrame: (LayoutFrame fractions: (offset@0 extent: fraction@1));
			addMorph: (StringMorph new 
				contents: each first class name);
			color: (Color basicNew
				setHue: (360.0 * hash)
				saturation: (0.3 + (hash * 0.7))
				brightness: (0.4 + (hash * 0.6)));
			yourself).
		offset := offset + fraction].