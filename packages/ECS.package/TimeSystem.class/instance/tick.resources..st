as yet unclassified
tick: componentsList resources: resourcesList

	| now |
	now  := Time millisecondClockValue.
	resourcesList first
		milliseconds: now - resourcesList first last;
		last: now