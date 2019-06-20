component lifecyle
chooseFromCurrentlyUsedComponentClassesDo: aBlock
	
	self
		chooseComponentClassDo: aBlock
		with: self currentlyUsedComponentClasses