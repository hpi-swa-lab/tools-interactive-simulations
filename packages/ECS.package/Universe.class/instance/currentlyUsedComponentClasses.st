component lifecyle
currentlyUsedComponentClasses

	^ EntityComponent subclasses select: [:subclass | self state components keys includes: subclass name]