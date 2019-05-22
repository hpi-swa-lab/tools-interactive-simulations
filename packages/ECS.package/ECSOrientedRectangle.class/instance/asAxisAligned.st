accessing
asAxisAligned
	" calculates the axlis aligned rectangle that contains this rectangle "
	| min max corners |
	corners := self corners.
	min := max := corners first.
	
	corners allButFirstDo: [ :point |
		point x < min x ifTrue: [ min := point x , min y ].
		point y < min y ifTrue: [ min := min x , point y ].
		
		point x > max x ifTrue: [ max := point x , max y ].
		point y > max y ifTrue: [ max := max x , point y ]].
	
	^ ECSOrientedRectangle origin: min corner: max