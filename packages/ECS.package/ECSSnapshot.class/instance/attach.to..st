as yet unclassified
attach: aComponentClass to: anEntityId

	^ ((self storageOf: aComponentClass) atForCreate: anEntityId) alive: true