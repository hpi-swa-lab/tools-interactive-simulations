universe-callbacks
addSystemToUI: aSystem

	| systemMorph |
	systemMorph := ECSSystemEditor openFor: aSystem with: self.
	
	list addItem: systemMorph.
	systemsInUI at: aSystem put: systemMorph