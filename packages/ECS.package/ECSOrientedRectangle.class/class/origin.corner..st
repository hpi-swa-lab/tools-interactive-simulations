instance creation
origin: originPoint corner: cornerPoint

	^ self new
		topLeft: originPoint;
		topRight: cornerPoint x , originPoint y;
		bottomRight: cornerPoint;
		bottomLeft: originPoint x , cornerPoint y;
		yourself