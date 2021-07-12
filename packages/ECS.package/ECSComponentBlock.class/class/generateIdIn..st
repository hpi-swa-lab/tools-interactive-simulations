as yet unclassified
generateIdIn: aUniverse

	| class |
	
	class := [:b |
		b
			class: 'NewComponent', (ThreadSafeRandom next asString last: 5) 
			super: EntityComponent
			instVars: {}
			current: nil] sbStSave.

	[:b |
		(b method: #fields in: class object classSide do: {b return: (b array: {})})] sbStSave.

	^ class object