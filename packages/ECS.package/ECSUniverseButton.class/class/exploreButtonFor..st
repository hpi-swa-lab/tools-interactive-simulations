instance creation
exploreButtonFor: aTool

	| button |
	button := self new.
	^ button 
		parentTool: aTool;
		when: #clicked send: #exploreUniverse to: button;
		icon: ECSIcon iconSearch;
		balloonText: 'Explore the universe';
		yourself