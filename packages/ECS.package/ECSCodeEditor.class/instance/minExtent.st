as yet unclassified
minExtent

	self fullExpand ifTrue: [^ self paragraphSize].
	
	^ super minExtent x @ (textMorph paragraph extent y + self extraSpacing)