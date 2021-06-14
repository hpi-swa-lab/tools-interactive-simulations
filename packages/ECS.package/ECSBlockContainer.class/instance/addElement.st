as yet unclassified
addElement

	| block id |

	id := self universe state maxEntityIndex + 1.
	self universe state allocateEntity.
	block := self type newWith: id.
	block when: #delete send: #deleteElement: to: self.
	self flag: 'Add this element to elements and generate an Id.'.
	scroll scroller addMorphBack: block.
	scroll scrollToShow: (0@9e8 extent: 0@0).
	scroll scroller lastSubmorph inputContainedUnknown