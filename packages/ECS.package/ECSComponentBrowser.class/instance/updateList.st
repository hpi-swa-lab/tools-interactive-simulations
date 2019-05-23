as yet unclassified
updateList

	list removeAllMorphs.
	
	EntityComponent subclassesDo: [:class |
		list addMorphBack: (ECSButton new
			small;
			label: class name;
			when: #clicked send: #openComponent: to: self with: class;
			hResizing: #spaceFill)]