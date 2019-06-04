as yet unclassified
atForRead: aNumber

	^ myEntityId = aNumber ifTrue: [singleInstance] ifFalse: [nullInstance]