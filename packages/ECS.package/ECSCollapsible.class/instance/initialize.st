as yet unclassified
initialize

	super initialize.
	
	header := ECSCollapsibleHeader new when: #toggleCollapsible send: #toggleBody to: self. 
	self addMorphBack: header.
	
	self changeTableLayout.
	self hResizing: #spaceFill; vResizing: #shrinkWrap.
	self color: Color white