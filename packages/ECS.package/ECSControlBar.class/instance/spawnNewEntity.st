as yet unclassified
spawnNewEntity

	| name choosableComponents choosenComponents entityComponents |
	name := UIManager default request: 'Name the new entity'.
	name ifNil: [^ self].
	
	choosableComponents := EntityComponent subclasses copy asOrderedCollection.
	choosableComponents
		remove: Label;
		remove: OptionalComponent.
	
	choosenComponents := UIManager default chooseMultipleFrom: choosableComponents values: choosableComponents.
	
	entityComponents := choosenComponents collect: [:componentClass | componentClass new] into: OrderedCollection new.
	entityComponents add: (Label new label: name).
	
	self universe spawnNewWith: entityComponents