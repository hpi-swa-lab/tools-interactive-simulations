instance creation
saveSnapshotButtonFor: aUniverse

	| button |
	button := self new.
	^ button 
		universe: aUniverse;
		when: #clicked send: #saveSnapshot to: button;
		icon: ECSIcon iconSave;
		balloonText: 'Save the universe';
		yourself