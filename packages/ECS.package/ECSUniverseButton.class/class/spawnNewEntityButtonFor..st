instance creation
spawnNewEntityButtonFor: aTool

	| button |
	button := self new.
	^ button 
		parentTool: aTool;
		when: #clicked send: #spawnNewEntity to: button;
		label: 'Entity';
		icon: ECSIcon iconPlus;
		balloonText: 'Add new entity';
		yourself