component lifecyle
allComponentsOf: anEntityId

	^ Array streamContents: [:stream |
		self allComponentsOf: anEntityId do: [:component | stream nextPut: component]]