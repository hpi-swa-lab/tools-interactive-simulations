menus
toggleBody

	body owner ifNotNil: [self collapse] ifNil: [self expand].
	self layoutChanged