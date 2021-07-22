insert/delete
deleteComponent

	self triggerEvent: #deleteElement with: self.
	self universe 
		removeActionsWithReceiver: self;
		query: {self id name asSymbol. #id} do: [:c :entityId | self universe remove: self id name from: entityId persisted: true].
	self universe componentClasses remove: self id ifAbsent: [].
	self deleteBlock