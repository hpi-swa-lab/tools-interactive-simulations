as yet unclassified
initialize

	fullExpand := false.
	super initialize.
	
	self vResizing: #shrinkWrap.
	self hResizing: #spaceFill.
	self wrapFlag: false.
	self styler: (SHTextStylerST80 new view: self).
	self model: self.
	setTextSelector := #privateSetText:notifying:.
	getTextSelector := #privateGetText.
	doItIsAccept := false