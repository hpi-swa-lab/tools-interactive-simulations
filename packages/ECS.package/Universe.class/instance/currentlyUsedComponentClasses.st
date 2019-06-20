component lifecyle
currentlyUsedComponentClasses

	^ EntityComponent subclasses select: [:subclass | self components keys includes: subclass name]