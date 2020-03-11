tool api
canPersistChangeTo: anEntityId component: aComponentClass

	^ (self canPersistChangeTo: anEntityId) and: [((persistedState storageOf: aComponentClass) atForFetch: anEntityId) alive]