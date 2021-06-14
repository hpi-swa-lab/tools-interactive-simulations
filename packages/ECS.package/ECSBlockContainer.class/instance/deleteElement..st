as yet unclassified
deleteElement: anElement

	self type delete: anElement id in: self universe.
	self elements removeKey: anElement id