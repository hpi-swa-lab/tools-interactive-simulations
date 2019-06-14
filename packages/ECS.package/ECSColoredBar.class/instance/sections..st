as yet unclassified
sections: aCollection

	sections := aCollection.
	total := sections inject: 0 into: [:sum :each | sum + each third].
	self changed