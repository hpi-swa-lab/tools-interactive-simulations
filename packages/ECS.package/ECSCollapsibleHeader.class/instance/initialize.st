as yet unclassified
initialize

	super initialize.
	
	self layoutInset: 12; cellInset: 12.
	self changeListDirection: #leftToRight.
	self changeTableLayout.
	self vResizing: #shrinkWrap.
	self wrapCentering: #center.
	self hResizing: #spaceFill.
	self addMorph: (toggleButton := ECSButton new icon: (ECSIcon iconChevron_down); when: #clicked send: #toggleCollapsed to: self)