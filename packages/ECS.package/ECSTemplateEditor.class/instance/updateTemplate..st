ui-building-updating
updateTemplate: aTemplate

	template := aTemplate.
	label contents: aTemplate name.
	self flag: #performance.  " do update instead of remove and create "
	list removeAllMorphs; addAll: (template components collect: [:c | ECSComponentEditor new
		updateComponent: c;
		parentTool: self;
		when: #changedValue send: #update:ofComponent:with: to: self])