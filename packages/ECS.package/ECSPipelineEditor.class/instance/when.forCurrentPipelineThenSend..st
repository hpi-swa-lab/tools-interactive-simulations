ui-building-updating-logic
when: event forCurrentPipelineThenSend: message

	self universe when: event evaluate: (ECSEventFilterer new
		message: message;
		receiver: self;
		firstArgumentFilter: pipeline)