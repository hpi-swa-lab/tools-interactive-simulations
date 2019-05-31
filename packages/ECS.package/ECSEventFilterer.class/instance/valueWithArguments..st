evaluating
valueWithArguments: aCollection

	aCollection first = self firstArgumentFilter ifTrue: [
		self receiver perform: self message withArguments: aCollection allButFirst]