as yet unclassified
matches: aComponentList

	^ aComponentList allSatisfy: [:class | self components contains: [:c | c class = class]]