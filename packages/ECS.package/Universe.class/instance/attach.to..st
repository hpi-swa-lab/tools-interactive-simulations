component lifecyle
attach: aComponentClass to: anEntityId

	^ ((components
		at: aComponentClass
		ifAbsentPut: [ | class |
			self triggerEvent: #componentAdded.
			class := Smalltalk at: aComponentClass value.
			class storage newForType: class
		]) atForCreate: anEntityId) alive: true