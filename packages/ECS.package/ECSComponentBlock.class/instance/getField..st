field handling
getField: aFieldName

	^ self fields detect: [:field | field fieldName asSymbol == aFieldName]