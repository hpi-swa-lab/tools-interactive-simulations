*ECS-UI
copyWithAll: aCollection

	| newIC |
	newIC := self species new: self size + aCollection size.
	newIC 
		replaceFrom: 1
		to: self size
		with: self
		startingAt: 1.
	newIC replaceFrom: self size + 1 to: newIC size with: aCollection startingAt: 1.
	^newIC