as yet unclassified
initialize

	super initialize.
	
	self layoutInset: (TextStyle defaultFont height / 3) rounded.
	self cellInset: self layoutInset.
	hovered := false.
	active := false.
	self changeListDirection: #leftToRight.
	self listCentering: #center.
	self hResizing: #shrinkWrap.
	self vResizing: #shrinkWrap.
	self cellPositioning: #center.
	self changeTableLayout