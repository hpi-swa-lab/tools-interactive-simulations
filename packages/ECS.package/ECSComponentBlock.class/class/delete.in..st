as yet unclassified
delete: anId in: aUniverse

	aUniverse query: {anId name asSymbol. #id} do: [:c :entityId | aUniverse remove: anId name from: entityId persisted: true].
	aUniverse componentClasses remove: anId