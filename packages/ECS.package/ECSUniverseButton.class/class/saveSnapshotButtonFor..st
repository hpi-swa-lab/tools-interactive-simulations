instance creation
saveSnapshotButtonFor: aTool

	| button |
	button := self new.
	^ button 
		parentTool: aTool;
		when: #clicked send: #saveSnapshot to: button;
		icon: ECSIcon iconSave;
		balloonText: 'Save the universe';
		yourself