as yet unclassified
dotProduct: aVector2
	"Answer a number that is the dot product of the receiver and the 
	argument, aPoint. That is, the two points are multipled and the 
	coordinates of the result summed."

	^ (x * aVector2 x) + (y * aVector2 y)