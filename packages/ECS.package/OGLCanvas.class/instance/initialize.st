accessing
initialize

	super initialize.
	
	clipRect := (0@0 corner: 10000@10000).
	origin := 0.0.
	worldOrigin := 0 @ 0.
	textureCache := Dictionary new