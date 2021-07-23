as yet unclassified
generateIdIn: aUniverse

	| id |

	id := aUniverse spawnNewAutoPersistedWith: {}.

	^ id