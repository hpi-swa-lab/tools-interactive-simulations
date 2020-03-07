as yet unclassified
editor: aMorph

	editor := aMorph.
	aMorph when: #editStarted send: #lockUpdates to: self.
	aMorph when: #editStopped send: #unlockUpdates to: self.
	self addMorphBack: editor