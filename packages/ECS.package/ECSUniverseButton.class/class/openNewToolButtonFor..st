instance creation
openNewToolButtonFor: aTool

	| button |
	button := self new.
	^ button 
		parentTool: aTool;
		when: #clicked send: #openNewTool to: button;
		icon: ECSIcon iconWindow_maximize;
		balloonText: 'Open new tool';
		yourself