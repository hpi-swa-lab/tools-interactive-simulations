initialization
profileUniverse

	| total totalTime |
	currentlyProfiling
		ifTrue: [currentlyProfiling := false]
		ifFalse: [ | tally tickMethods |
			currentlyProfiling := true.
			tally := MessageTally new.
			tally spyEvery: 1 on: [[currentlyProfiling] whileTrue: [self world doOneCycle]].
			
			tickMethods := OrderedCollection new.
			self exploreTally: tally into: tickMethods.
			
			total := tally tally.
			totalTime := tally time.
			(ECSTreeView new
				widgetForItem: [:item | ECSLabel new contents: (self tallyStringFor: item totalTallies: total totalTime: totalTime)];
				childItemsForItem: #receiversSortedByCall;
				rootItems: tickMethods;
				build;
				openInWindow) openAsTool]