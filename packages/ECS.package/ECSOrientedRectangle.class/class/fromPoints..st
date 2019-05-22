instance creation
fromPoints: anArray

	^ self new
		topLeft: anArray first;
		topRight: anArray second;
		bottomRight: anArray third;
		bottomLeft: anArray fourth;
		yourself