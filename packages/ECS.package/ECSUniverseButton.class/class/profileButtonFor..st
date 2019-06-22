instance creation
profileButtonFor: aTool

	| button |
	button := self new.
	^ button 
		parentTool: aTool;
		when: #clicked send: #profileUniverse to: button;
		icon: ECSIcon iconClock_o;
		balloonText: 'Profile the Universe';
		yourself