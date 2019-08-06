as yet unclassified
testWriting

	| source a b c method editor watcherIntervals |
	source := 'tick: aUniverse
	^ {$a. $b. $c. $d. $e}'.
	system compile: source.
	method := system >> #tick:.
	editor := ECSCodeMethodEditor new
		method: method;
		yourself.
	self assert: source equals: editor text asString.
	
	a := editor text asString findString: '$a'.
	editor setSelection: (a to: a + 1).
	editor watchSelectedExpression.
	self assert: 'tick: aUniverse
	^ {$a"', (String value: 1), '". $b. $c. $d. $e}' equals: editor text asString.
	self checkAttributeAt: a forId: nil andClass: ECSWatchedExpressionAttribute in: editor.
	
	c := editor text asString findString: '$c'.
	editor setSelection: (c to: c + 1).
	editor watchSelectedExpression.
	self assert: 'tick: aUniverse
	^ {$a"', (String value: 1), '". $b. $c"', (String value: 1), '". $d. $e}' equals: editor text asString.
	self checkAttributeAt: c forId: nil andClass: ECSWatchedExpressionAttribute in: editor.
	
	b := editor text asString findString: '$b'.
	editor setSelection: (b to: b + 1).
	editor watchSelectedExpression.
	self assert: 'tick: aUniverse
	^ {$a"', (String value: 1), '". $b"', (String value: 1), '". $c"', (String value: 1), '". $d. $e}' equals: editor text asString.
	self checkAttributeAt: b forId: nil andClass: ECSWatchedExpressionAttribute in: editor.
	
	method := system >> #tick:.
	watcherIntervals := method propertyValueAt: #ecsWatcherIntervals.
	self assert: watcherIntervals isEmpty.
	
	editor accept.
	
	a := source findString: '$a'.
	b := source findString: '$b'.
	c := source findString: '$c'.
	method := system >> #tick:.
	watcherIntervals := method propertyValueAt: #ecsWatcherIntervals.
	self assert: {
		(a to: a + 1).
		(b to: b + 1).
		(c to: c + 1)} asSet equals: watcherIntervals keys asSet