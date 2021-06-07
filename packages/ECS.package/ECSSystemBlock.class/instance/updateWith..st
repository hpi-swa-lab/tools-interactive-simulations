as yet unclassified
updateWith: aUniverse

	"""| method |"
	self title: self id asString.
	""self addMorphBack: (ECSMethodBlock newWith: self id)."
	""method := (self id lookupSelector: #tick:) asSandblock hResizing: #spaceFill.
	self addMorphBack: method"""""
	