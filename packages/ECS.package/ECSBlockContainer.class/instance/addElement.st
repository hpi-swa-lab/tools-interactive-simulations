as yet unclassified
addElement

	| block id |

	id := self type generateIdIn: self universe.
	block := self type newWith: id in: self universe.
	block when: #delete send: #deleteElement: to: self.
	self flag: 'Add this element to elements and generate an Id.'.
	scroll scrollToShow: (0@9e8 extent: 0@0).
	scroll scroller lastSubmorph inputContainedUnknown