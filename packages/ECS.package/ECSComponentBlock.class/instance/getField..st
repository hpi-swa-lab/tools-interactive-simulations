as yet unclassified
getField: aFieldName

	^ self fields detect: [:field | field fieldName == aFieldName]