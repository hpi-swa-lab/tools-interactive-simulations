accessing
system: aSystem

	self removeAllMorphs.
	system := aSystem.
	
	aSystem class methodsDo: [:method | | editor |   
		editor := self editorForMethod: method.
		editor position: editor position + self position.
		self addMorphBack: editor]