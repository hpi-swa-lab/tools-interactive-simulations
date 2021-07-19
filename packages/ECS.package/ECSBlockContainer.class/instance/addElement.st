adding
addElement

	| element id |

	id := self type generateIdIn: self universe.
	element := self type newWith: id in: self universe.
	element when: #deleteElement send: #deleteElement: to: self.
	self elements at: id put: element.
	scroll scroller addMorphBack: element.
	scroll scrollToShow: scroll scroller lastSubmorph.