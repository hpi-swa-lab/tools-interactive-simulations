as yet unclassified
delete: anId in: aUniverse

	self flag: 'We need to call deleteComponent: of EntityBlock for each entity with current component.'.
	aUniverse query: {anId name asSymbol. #id} do: [:c :entityId | aUniverse remove: anId name from: entityId persisted: true].
	aUniverse componentClasses remove: anId