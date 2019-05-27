component lifecyle
attach: aComponentClass to: anEntityId

	^ ((components
		at: aComponentClass
		ifAbsentPut: [aComponentClass storage newForType: aComponentClass]) atForWrite: anEntityId) alive: true