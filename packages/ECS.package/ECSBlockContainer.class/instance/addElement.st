as yet unclassified
addElement

	| element id |

	id := self type generateIdIn: self universe.
	element := self type newWith: id in: self universe.
	element when: #deleteElement send: #deleteElement: to: self.
	self elements at: id put: element.
	self flag: 'Add this element to elements and generate an Id.'.
	scroll scroller addMorphBack: element.
	scroll scrollToShow: scroll scroller lastSubmorph.