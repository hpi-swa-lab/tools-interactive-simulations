updating
addTemplate

	self universe addTemplate: (ECSTemplate new
		name: ((UIManager default request: 'Template Name') ifEmpty: [^ self])).
	self updateList