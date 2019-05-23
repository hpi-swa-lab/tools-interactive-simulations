as yet unclassified
onChange: aBlock

	x onChange: [:valX | aBlock value: valX , y value].
	y onChange: [:valY | aBlock value: x value , valY]