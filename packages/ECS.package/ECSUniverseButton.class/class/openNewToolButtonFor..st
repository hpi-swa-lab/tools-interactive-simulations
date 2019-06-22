instance creation
openNewToolButtonFor: aUniverse

	| button |
	button := self new.
	^ button 
		universe: aUniverse;
		when: #clicked send: #openNewTool to: button;
		icon: ECSIcon iconWindow_maximize;
		balloonText: 'Open new tool';
		yourself