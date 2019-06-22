button-functionality
renameTemplate

	| newName |
	newName := UIManager default request: 'Enter new template name'.
	newName ifEmpty: [^ self].
	
	template name: newName.
	self updateTemplate: template