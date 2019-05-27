as yet unclassified
updateList

	self removeAllMorphs.
	
	self universe templates do: [:template |
		self addMorphBack: (ECSTemplateEditor new universe: self universe; updateTemplate: template)].
	
	self addMorphBack: (ECSButton new icon: ECSIcon iconPlus; hResizing: #spaceFill; when: #clicked send: #addTemplate to: self)