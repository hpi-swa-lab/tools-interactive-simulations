initialization
exploreTally: aTally

	(aTally receiverClass inheritsFrom: System) ifTrue: [aTally explore] ifFalse: [aTally receivers do: [:r | self exploreTally: r]]