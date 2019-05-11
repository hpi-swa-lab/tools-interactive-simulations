as yet unclassified
drawSubmorphsOn: aCanvas

	self wantsOGL
		ifFalse: [super drawSubmorphsOn: aCanvas]
		ifTrue: [
			canvas
				frameDo: [submorphs reverseDo: [:m | canvas fullDrawMorph: m]]
				worldOrigin: self position]