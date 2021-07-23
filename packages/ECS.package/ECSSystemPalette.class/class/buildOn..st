as yet unclassified
buildOn: aBuilder

	aBuilder
		addHeader: 'ECS System';
		addSectionHeader: 'Utilities';
		addBlock: 'Util' as: (SBStMessageSend new
			receiver: (SBStName contents: 'aUniverse')
			selector: #query:do:
			arguments: {SBStArray new. SBStBlockBody empty})