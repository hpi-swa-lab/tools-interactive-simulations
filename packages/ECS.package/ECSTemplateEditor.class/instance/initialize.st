as yet unclassified
initialize

	super initialize.
	
	self
		header: (label := ECSLabel new hResizing: #spaceFill);
		header: (ECSButton new icon: ECSIcon iconPlus; when: #clicked send: #addComponent to: self);
		header: (ECSButton new icon: ECSIcon iconBolt; when: #clicked send: #spawnTemplate to: self);
		body: (list := ECSColumn new)