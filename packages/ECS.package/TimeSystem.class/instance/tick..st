as yet unclassified
tick: aWorld

	| now |
	now  := Time millisecondClockValue.
	aWorld resource: DeltaTime do: [:deltaTime |
		deltaTime
			milliseconds: now - deltaTime last;
			last: now]