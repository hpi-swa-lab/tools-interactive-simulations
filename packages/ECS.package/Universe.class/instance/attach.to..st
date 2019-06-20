component lifecyle
attach: aComponentClass to: anEntityId

	^ ((components
		at: aComponentClass
		ifAbsentPut: [self constructStorageFor: aComponentClass]) atForCreate: anEntityId) alive: true