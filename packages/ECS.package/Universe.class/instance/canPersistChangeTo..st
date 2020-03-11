tool api
canPersistChangeTo: anEntityId

	^ ((state storageOf: #ECSPersisted) atForFetch: anEntityId) alive