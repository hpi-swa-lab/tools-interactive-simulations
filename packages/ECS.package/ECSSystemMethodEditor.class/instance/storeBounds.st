as yet unclassified
storeBounds

	boundsInfo at: editor editingMethod selector put: (bounds translateBy: (self owner ifNotNil: #position ifNil: [0 @ 0]) negated)