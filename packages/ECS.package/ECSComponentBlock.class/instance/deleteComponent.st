insert/delete
deleteComponent

	self deleteBlock.
	self universe removeActionsWithReceiver: self.
	self triggerEvent: #deleteElement with: self.
	self universe query: {self id name asSymbol. #id} do: [:c :entityId | self universe remove: self id name from: entityId persisted: true].
	self universe componentClasses remove: self id