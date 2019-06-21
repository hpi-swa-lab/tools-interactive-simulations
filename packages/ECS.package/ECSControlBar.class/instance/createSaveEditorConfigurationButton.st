initialization
createSaveEditorConfigurationButton

	^ ECSButton new
		when: #clicked send: #saveCurrentToolConfigurationAsStandard to: self;
		icon: ECSIcon iconLife_saver;
		balloonText: 'Save current tool configuration as standard for editor'