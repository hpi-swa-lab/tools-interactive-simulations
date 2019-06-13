as yet unclassified
report: aNumber

	values at: cursor put: aNumber.
	cursor := cursor + 1.
	cursor = smoothingDuration ifTrue: [
		cursor := 1.
		average := values average asFloat].
	self touch