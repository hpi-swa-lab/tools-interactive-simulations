as yet unclassified
initialize

	super initialize.
	
	self addMorphBack: (list := ECSTextList new when: #activate send: #openComponent: to: self).
	self addMorphBack: (ECSToolResizer new target: self).
	
	self header addMorphBack: (ECSButton new
		small;
		icon: ECSIcon iconPlus; when: #clicked send: #addComponent to: self;
		balloonText: 'Add new component class').
	self updateList.
	self height: 100 * (TextStyle defaultFont height / 16) rounded.
	self vResizing: #rigid.
	
	SystemChangeNotifier uniqueInstance
		notify: self ofSystemChangesOfItem: #class change: #Added using: #updateList