as yet unclassified
reportValue: anObject

	(display class matches: anObject) ifFalse: [self useDisplay: ECSDisplayPrint].
	
	lastValue := anObject.
	^ display reportValue: anObject