ui-building-updating
addComponent

	self universe chooseComponentClassDo: [:class | self universe autoPersistAttach: class name to: id]