as yet unclassified
checkReplay

	self universe query: {DeltaTime} do: [:deltaTime |
		deltaTime elapsed > endTime ifTrue: [self playSnapshot]]