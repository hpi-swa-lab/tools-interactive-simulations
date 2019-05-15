as yet unclassified
initialize

	super initialize.
	
	self vResizing: #shrinkWrap.
	self hResizing: #spaceFill.
	self wrapFlag: false.
	self styler: (SHTextStylerST80 new view: self; parseAMethod: true)