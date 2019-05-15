as yet unclassified
initialize

	super initialize.
	
	self layoutInset: 12.
	hovered := false.
	active := false.
	self hResizing: #shrinkWrap.
	self vResizing: #shrinkWrap.
	self changeTableLayout