initialization
exploreTally: aTally into: aCollection

	(aTally receiverClass inheritsFrom: System) ifTrue: [aCollection add: aTally] ifFalse: [aTally receivers do: [:r | self exploreTally: r into: aCollection]]