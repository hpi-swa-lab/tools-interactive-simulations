as yet unclassified
newOf: anECSType with: aUniverse

	^ self basicNew
		type: anECSType;
		universe: aUniverse;
		initialize