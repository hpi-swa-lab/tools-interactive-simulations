geometry
storeBounds

	boundsInfo at: editor method selector put: (bounds translateBy: (self owner ifNotNil: #position ifNil: [0 @ 0]) negated)