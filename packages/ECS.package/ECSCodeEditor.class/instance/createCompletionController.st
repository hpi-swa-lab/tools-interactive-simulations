as yet unclassified
createCompletionController

	^ (ECPreferences useECompletionInsteadOfOCompletion
		ifFalse: [ OController ]
		ifTrue: [ ECBrowserController ])
			model: self