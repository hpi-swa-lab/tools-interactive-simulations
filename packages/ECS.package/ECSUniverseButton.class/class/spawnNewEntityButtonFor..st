instance creation
spawnNewEntityButtonFor: aUniverse

	| button |
	button := self new.
	^ button 
		universe: aUniverse;
		when: #clicked send: #spawnNewEntity to: button;
		label: 'Entity';
		icon: ECSIcon iconPlus;
		balloonText: 'Add new entity';
		yourself