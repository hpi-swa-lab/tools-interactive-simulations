as yet unclassified
initialize

	| spacing |
	super initialize.
	
	spacing := TextStyle defaultFont height / 3.0.
	self layoutInset: spacing; cellInset: spacing.
	self changeListDirection: #leftToRight.
	self changeTableLayout.
	self vResizing: #shrinkWrap.
	self wrapCentering: #center.
	self hResizing: #spaceFill.
	self addMorph: (toggleButton := ECSButton new icon: (ECSIcon iconChevron_down); when: #clicked send: #toggleCollapsed to: self).
	self privateCollapse