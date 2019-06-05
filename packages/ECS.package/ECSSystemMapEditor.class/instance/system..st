as yet unclassified
system: aSystem

	self removeAllMorphs.
	system := aSystem.
	
	aSystem class methodsDo: [:method |   
		self addMorphBack: (self editorForMethod: method)]