as yet unclassified
updateView

	pipeline systems do: [:system |
		Transcript show: system; cr.
		system class methodsDo: [:method | | addComponent |
			addComponent := [:literal |
				Smalltalk at: literal ifPresent: [:class | (class inheritsFrom: EntityComponent) ifTrue: [
						Transcript tab; show: class; cr]]].
			
			method allLiterals do: [:literal |
				literal isArray
					ifTrue: [literal do: addComponent]
					ifFalse: [addComponent value: literal]]]]