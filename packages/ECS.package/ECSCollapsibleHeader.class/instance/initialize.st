as yet unclassified
initialize

	| spacing |
	super initialize.
	
	spacing := (TextStyle defaultFont height / 3) rounded.
	self layoutInset: spacing; cellInset: spacing.
	self changeListDirection: #leftToRight.
	self changeTableLayout.
	self resetColor.
	self vResizing: #shrinkWrap.
	self wrapCentering: #center.
	self hResizing: #spaceFill.
	self addMorph: (toggleButton := ECSButton new small; icon: (ECSIcon iconChevron_right); when: #clicked send: #toggleCollapsed to: self).
	self privateCollapse