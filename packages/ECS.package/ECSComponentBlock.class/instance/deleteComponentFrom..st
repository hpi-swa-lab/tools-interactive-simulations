insert/delete
deleteComponentFrom: anEntityId

	self universe removeActionsWithReceiver: self.
	self universe remove: self id name from: anEntityId persisted: true