evaluating
valueWithArguments: aCollection

	(self filterBlock value: aCollection) ifTrue: [
		self receiver perform: self message withArguments: aCollection allButFirst]