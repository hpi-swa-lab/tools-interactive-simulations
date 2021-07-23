adding/deleting
deleteEntity

	self deleteBlock.
	self universe removeActionsWithReceiver: self.
	self triggerEvent: #deleteElement with: self.
	self universe remove: self id persisted: true