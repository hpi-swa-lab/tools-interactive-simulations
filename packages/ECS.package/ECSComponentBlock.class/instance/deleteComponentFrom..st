insert/delete
deleteComponentFrom: anEntityId

	self universe
		removeActionsWithReceiver: self;
		remove: self id name from: anEntityId persisted: true