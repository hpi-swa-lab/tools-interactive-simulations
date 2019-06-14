as yet unclassified
toggleLooping

	looping
		ifFalse: [
			recordButton visible: false.
			loopingButton visible: true.
			progress visible: true.
			loopingButton label: 'Stop Looping'.
			
			componentSnapshot ifNotNil: [
				looping := true.
				self universe when: #preTick send: #checkReplay to: self.
				self playSnapshot]]
		ifTrue: [
			recordButton visible: true.
			loopingButton visible: true.
			progress visible: false.
			loopingButton label: 'Restart Looping'.
			
			looping := false.
			self universe removeActionsWithReceiver: self forEvent: #preTick]