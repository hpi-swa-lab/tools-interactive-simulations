as yet unclassified
initialize

	super initialize.
	
	systemsInUI := Dictionary new.
	
	self universe systems do: [:each | self addSystemToUI: each].
	
	self universe
		when: #newSystemRegistered send: #addSystemToUI: to: self;
		when: #systemUnregistered send: #removeSystemFromUI: to: self.
	
	header addMorphBack: (ECSButton new
		icon: (ECSIcon iconPlus);
		when: #clicked send: #createNewSystemClass to: self)