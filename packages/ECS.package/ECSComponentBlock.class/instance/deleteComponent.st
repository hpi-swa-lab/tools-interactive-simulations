insert/delete
deleteComponent

	self deleteBlock.
	self universe removeActionsWithReceiver: self.
	self triggerEvent: #deleteElement with: self.
	self flag: #ToDo "delete here"