as yet unclassified
instanceIn: aUniverse

	| entity |
	self flag: #performance. " could likely prepare some things here, create proper copyFieldsTo: funcs "
	entity := aUniverse spawnNewWith: (components collect: [:c | c className asSymbol]) withListDo: [:componentInstances |
		componentInstances with: components do: [:component :componentTemplate |
			componentTemplate copyFieldsTo: component]].
	(aUniverse attach: #InstanceOfTemplate to: entity) template: self name.
	^ entity