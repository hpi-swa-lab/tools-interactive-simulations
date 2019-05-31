as yet unclassified
iconForRunContinuously

	^ pipeline runContinuously ifTrue: [#iconHourglass] ifFalse: [#iconRefresh]