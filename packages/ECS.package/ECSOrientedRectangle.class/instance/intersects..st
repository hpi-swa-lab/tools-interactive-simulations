geometry
intersects: otherRectangle
	| aVectorX aVectorY bVectorX bVectorY minA maxA minB maxB vectors newA newB |
	" OBB collision detection. This code is (more or less) duplicated from TOMUtils>>shape:intersects:
	  because we can do considerable optimizations when we need to test rectangles as opposed to
	  arbitrary shapes. This code runs about twice as fast for the same set of inputs. "
	
	aVectorY := self topLeft - self topRight.
	aVectorX := self topRight - self bottomRight.
	
	bVectorY := otherRectangle topLeft - otherRectangle topRight.
	bVectorX := otherRectangle topRight - otherRectangle bottomRight.
	
	vectors := Array with: aVectorY with: aVectorX with: bVectorY with: bVectorX. 
	
	vectors detect: [ :vector |
		minA :=  self topLeft dotProduct: vector.
		maxA := minA.
		2 to: 4 do: [ :corner |
			newA := (self corners at: corner) dotProduct: vector.
			newA < minA ifTrue: [minA := newA].
			newA > maxA ifTrue: [maxA := newA]].
		
		minB := otherRectangle topLeft dotProduct: vector.
		maxB := minB.
		2 to: 4 do: [ :corner |
			newB := (otherRectangle corners at: corner) dotProduct: vector.
			newB < minB ifTrue: [minB := newB].
			newB > maxB ifTrue: [maxB := newB]].
		
		(maxA < minB or: [maxB < minA])] ifNone: [^true].
	
	^false