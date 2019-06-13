as yet unclassified
sections: aCollection

	sections := aCollection.
	total := 0.
	aCollection do: [:each | total := total + each third].
	self changed