constants-and-icons
iconForRunContinuously

	^ pipeline runContinuously ifTrue: [#iconHourglass] ifFalse: [#iconRefresh]