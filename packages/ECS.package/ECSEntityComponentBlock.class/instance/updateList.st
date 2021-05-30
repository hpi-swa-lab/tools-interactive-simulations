as yet unclassified
updateList

	entities updateElements: (self universe query: #())  with: self universe.
	components updateElements: (self universe componentClasses) with: self universe.
