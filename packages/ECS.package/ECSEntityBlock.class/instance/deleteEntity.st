as yet unclassified
deleteEntity

	self deleteBlock.
	self universe removeActionsWithReceiver: self.
	self triggerEvent: #deleteElement with: self