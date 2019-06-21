instance creation
exploreButtonFor: aUniverse

	| button |
	button := self new.
	^ button 
		universe: aUniverse;
		when: #clicked send: #exploreUniverse to: button;
		icon: ECSIcon iconSearch;
		balloonText: 'Explore the universe';
		yourself