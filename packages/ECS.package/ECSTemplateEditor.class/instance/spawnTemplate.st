as yet unclassified
spawnTemplate

	| entity |
	entity := self universe spawnNewWith: (template components collect: #class) withListDo: [:components |
		components with: template components do: [:component :componentTemplate |
			component class instVarNames do: [:name |
				component instVarNamed: name put: (componentTemplate instVarNamed: name)]]].
	self universe attach: PendingPlacement to: entity