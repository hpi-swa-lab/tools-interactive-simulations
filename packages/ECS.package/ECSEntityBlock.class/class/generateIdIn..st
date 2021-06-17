as yet unclassified
generateIdIn: aUniverse

	| id |

	id := aUniverse state maxEntityIndex + 1.
	aUniverse state allocateEntity.
	^ id