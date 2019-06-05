as yet unclassified
toggleLooping

	looping
		ifFalse: [
			componentSnapshot ifNotNil: [
				looping := true.
				self universe when: #preTick send: #checkReplay to: self.
				self playSnapshot]]
		ifTrue: [
			looping := false.
			self universe removeActionsWithReceiver: self forEvent: #preTick]