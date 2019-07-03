instance creation
buildDataFlowButtonFor: aTool

	| button |
	button := self new.
	^ button 
		parentTool: aTool;
		when: #clicked send: #buildDataFlowConnections to: button;
		icon: ECSIcon iconPlug;
		balloonText: 'Build Data Flow Connections';
		yourself