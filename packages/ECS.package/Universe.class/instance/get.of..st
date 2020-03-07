component lifecyle
get: aComponentClassList of: anEntityId

	| dest |
	dest := Array new: aComponentClassList size.
	1 to: aComponentClassList size do: [:i | | component componentSymbol |
		componentSymbol := aComponentClassList at: i.
		component := (state storageOf: componentSymbol) atForFetch: anEntityId.
		dest at: i put: (component alive
			ifTrue: [component]
			ifFalse: [componentSymbol isOptional ifTrue: [nil] ifFalse: [^ nil]])].
	^ dest