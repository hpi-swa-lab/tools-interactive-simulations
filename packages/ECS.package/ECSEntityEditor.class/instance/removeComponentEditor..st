ui-building-updating
removeComponentEditor: aComponentEditor

	self removeMorph: aComponentEditor.
	self universe remove: aComponentEditor component class from: id