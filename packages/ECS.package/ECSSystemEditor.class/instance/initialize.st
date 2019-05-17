as yet unclassified
initialize

	super initialize.
	
	systemsInUI := Dictionary new.
	list := ECSSortable new.
	list when: #itemMoved:toIndex: send: #systemReordered:newIndex: to: self.
	
	self universe systems do: [:each | self addSystemToUI: each].
	
	self universe
		when: #newSystemRegistered send: #addSystemToUI: to: self;
		when: #systemUnregistered send: #removeSystemFromUI: to: self;
		when: #systemOrderChanged send: #systemOrderChanged to: self.
	
	header addMorphBack: (ECSButton new
		icon: (ECSIcon iconPlus);
		when: #clicked send: #addSystem to: self).
		
	self addMorphBack: list