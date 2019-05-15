as yet unclassified
initialize

	super initialize.
	
	self layoutInset: (TextStyle defaultFont height / 3).
	hovered := false.
	active := false.
	self hResizing: #shrinkWrap.
	self vResizing: #shrinkWrap.
	self changeTableLayout