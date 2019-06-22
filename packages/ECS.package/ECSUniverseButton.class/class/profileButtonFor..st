instance creation
profileButtonFor: aUniverse

	| button |
	button := self new.
	^ button 
		universe: aUniverse;
		when: #clicked send: #profileUniverse to: button;
		icon: ECSIcon iconClock_o;
		balloonText: 'Profile the Universe';
		yourself