as yet unclassified
initialize

	super initialize.
	
	self universe systems do: [:each | self addSystemToUI: each].
	
	self universe
		when: #newSystemRegistered
		send: #addSystemToUI:
		to: self.
	
	header addMorphBack: (ECSButton new
		icon: (ECSIcon iconPlus);
		when: #clicked send: #createNewSystemClass to: self)