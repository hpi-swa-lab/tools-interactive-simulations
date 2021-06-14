as yet unclassified
update

	self title: self id asString.
	self addMorphBack: (ECSMethodBlock newWith: self id).
	self toggleCollapsed
	