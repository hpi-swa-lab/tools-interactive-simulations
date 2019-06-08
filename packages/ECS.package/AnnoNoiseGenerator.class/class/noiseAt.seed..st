as yet unclassified
noiseAt: aPoint seed: aNumber

	| s n0 n1 n2 xin yin F2 G2 F3 G3 i j t x0 y0 i1 j1 x1 y1 x2 y2 gi0 gi1 gi2 t0 t1 t2 gradP perm tmp |
	tmp := self gradPAndPermCache at: aNumber ifAbsentPut: [self gradPAndPerm: aNumber].
	gradP := tmp first.
	perm := tmp second.
	
	F2 := 0.5 * (3 sqrt - 1).
	G2 := (3 - (3 sqrt)) / 6.
	F3 := 1/3.
	G3 := 1/6.
	
	"Skew the input space to determine which simplex cell we're in"
	xin := aPoint x.
	yin := aPoint y.
	s := (xin + yin) * F2. "Hairy factor for 2D"
	i := (xin + s) truncated.
	j := (yin + s) truncated.
	t := (i + j) * G2.
    	x0 := xin - i + t. "// The x,y distances from the cell origin, unskewed."
	y0 := yin - j + t.
	"// For the 2D case, the simplex shape is an equilateral triangle.
 	// Determine which simplex we are in."
	"i1, j1 Offsets for second (middle) corner of simplex in (i,j) coords"
 
	x0 > y0 
		ifTrue: [" // lower triangle, XY order: (0,0)->(1,0)->(1,1)"
			i1 := 1.
			j1 := 0] 
		ifFalse: ["    // upper triangle, YX order: (0,0)->(0,1)->(1,1)"
			i1 := 0.
			j1 := 1].
	
	"// A step of (1,0) in (i,j) means a step of (1-c,-c) in (x,y), and
	// a step of (0,1) in (i,j) means a step of (-c,1-c) in (x,y), where
	// c = (3-sqrt(3))/6"
	x1 := x0 - i1 + G2." // Offsets for middle corner in (x,y) unskewed coords"
	y1 := y0 - j1 + G2.
	x2 := x0 - 1 + (2 * G2)." // Offsets for last corner in (x,y) unskewed coords"
	y2 := y0 - 1 + (2 * G2).
	"// Work out the hashed gradient indices of the three simplex corners"
	i := i bitAnd: 255.
	j := j bitAnd: 255.

	gi0 := gradP at: (i + (perm at: j + 1) + 1).
	gi1 := gradP at: (i + i1 + (perm at: j + j1 + 1) + 1).
	gi2 := gradP at: (i + 1 + (perm at: j + 1 + 1) + 1).

	"// Calculate the contribution from the three corners"
	t0 := 0.5 - (x0 * x0) - (y0 * y0).
	t0 < 0 
	    ifTrue: [n0 := 0] 
	    ifFalse: [t0 := t0 * t0.
	      n0 := t0 * t0 * ((gi0 x * x0) + (gi0 y * y0)) "// (x,y) of grad3 used for 2D gradient"].

	t1 := 0.5 - (x1 * x1) - (y1 * y1).
	t1 < 0 
	  ifTrue: [n1 := 0]
	  ifFalse: [t1 := t1 * t1.
	    n1 := t1 * t1 * ((gi1 x * x1) + (gi1 y * y1))].

	t2 := 0.5 - (x2 * x2) - (y2 * y2).
	t2 < 0 
	  ifTrue: [n2 := 0]
	  ifFalse: [t2 := t2 * t2.
	    n2 := t2 * t2 * ((gi2 x * x2) + (gi2 y * y2))].

	"// Add contributions from each corner to get the final noise value.
	// The result is scaled to return values in the interval [0,1]."

	^ ((70 * (n0 + n1 + n2) ) + 1) / 2