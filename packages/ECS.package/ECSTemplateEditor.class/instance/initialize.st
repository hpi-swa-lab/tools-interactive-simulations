initialization
initialize

	super initialize.
	
	self
		header: (label := ECSLabel new hResizing: #spaceFill);
		header: (ECSButton new
			icon: ECSIcon iconEdit;
			when: #clicked send: #renameTemplate to: self;
			balloonText: 'Rename template');
		header: (ECSButton new
			icon: ECSIcon iconPlus;
			when: #clicked send: #addComponent to: self;
			balloonText: 'Add component(s) to template');
		header: (ECSButton new
			icon: ECSIcon iconBolt;
			when: #clicked send: #spawnTemplate to: self;
			balloonText: 'Spawn new instance of template');
		body: (list := ECSColumn new)