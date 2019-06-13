accessing
expandItem: anItem morph: aMorph

	| children |
	children := aMorph children
		ifNil: [
			aMorph children: ((self childItemsForItem value: anItem)
				collect: [:i | self buildWidgetForItem: i parent: aMorph]).
			aMorph children].
	
	children reverseDo: [:child |
		list addMorph: child behind: aMorph].
	
	self resizeScroller; resizeScrollBars; setScrollDeltas