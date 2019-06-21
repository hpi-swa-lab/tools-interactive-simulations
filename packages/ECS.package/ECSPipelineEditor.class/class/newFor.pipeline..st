instance creation
newFor: aUniverse pipeline: aPipeline

	^ self basicNew
		universe: aUniverse;
		pipeline: aPipeline;
		initialize