instance creation
origin: originPoint extent: extentPoint

	^ self new
		topLeft: originPoint;
		topRight: originPoint + (extentPoint x , 0);
		bottomRight: originPoint + extentPoint;
		bottomLeft: originPoint + (0 , extentPoint y);
		yourself