as yet unclassified
addElement

	| element id |

	id := self type generateIdIn: self universe.
	element := self type newWith: id in: self universe.
	element when: #delete send: #deleteElement: to: self.
	self elements at: id put: element.
	self flag: 'Add this element to elements and generate an Id.'.
	scroll scroller addMorphBack: element.
	scroll scrollToShow: (0@9e8 extent: 0@0).
	scroll scroller lastSubmorph inputContainedUnknown