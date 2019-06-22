updating
updateList

	self submorphs from: 2 to: self submorphCount do: [:m | self removeMorph: m].
	
	self universe templates do: [:template |
		self addMorphBack: (ECSTemplateEditor new universe: self universe; updateTemplate: template)].
	
	self addMorphBack: (ECSButton new
		icon: ECSIcon iconPlus;
		hResizing: #spaceFill;
		when: #clicked send: #addTemplate to: self;
		balloonText: 'Add new template')