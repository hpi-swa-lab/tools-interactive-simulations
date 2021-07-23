artefact protocol
saveTryFixing: aBoolean quick: aBoolean2

	| myComponents |
	
	myComponents := (self universe queryById: self id) first.
	myComponents detect: [:c | c class = Label] 
		ifNone: [self universe attach: #Label to: self id persisted: true].
	self universe set: #label in: #Label of: self id to: self title persist: true.
	
	^ true