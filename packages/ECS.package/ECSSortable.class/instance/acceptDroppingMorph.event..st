as yet unclassified
acceptDroppingMorph: aMorph event: evt
	
	| index |
	super acceptDroppingMorph: aMorph event: evt.
	
	index := self layoutPolicy indexForInserting: aMorph at: evt position in: self.
	self triggerEvent: #itemMoved:toIndex: withArguments: {aMorph firstSubmorph. index}