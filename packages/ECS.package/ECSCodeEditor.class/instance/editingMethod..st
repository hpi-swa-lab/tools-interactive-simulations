as yet unclassified
editingMethod: aMethod

	editingMethod := aMethod.
	self changeText: aMethod getSourceFromFile.
	"self styleFullMethod: true"