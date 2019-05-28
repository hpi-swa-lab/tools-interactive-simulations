as yet unclassified
when: event forCurrentPipelineThenSend: message

	self universe when: event evaluate: (ECSEventFilterer new
		message: message;
		receiver: self;
		filterBlock: [:args | args first = pipeline])