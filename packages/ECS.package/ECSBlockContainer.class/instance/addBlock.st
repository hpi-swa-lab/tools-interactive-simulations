as yet unclassified
addBlock

	self flag: 'Add this element to elements and generate an Id.'.
	scroll scroller addMorphBack: self type new.
	scroll scrollToShow: scroll scroller lastSubmorph bounds