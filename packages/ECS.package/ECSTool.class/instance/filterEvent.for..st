accessing
filterEvent: anEvent for: aMorph

	SBLabel text: ['note: keyvalue is OS-dependent, so this will likely only work only linux right now (shift key)'].
	(anEvent isKeyDown and: [anEvent keyValue = 255]) ifTrue: [self universe autoPersist: self universe autoPersist not].
	(anEvent isKeyUp and: [anEvent keyValue = 255]) ifTrue: [self universe autoPersist: self universe autoPersist not].
	^ anEvent